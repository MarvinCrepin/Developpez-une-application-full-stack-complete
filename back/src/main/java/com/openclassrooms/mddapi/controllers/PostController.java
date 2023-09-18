package com.openclassrooms.mddapi.controllers;

import com.openclassrooms.mddapi.dto.user.PostDTO;
import com.openclassrooms.mddapi.mapper.PostMapper;
import com.openclassrooms.mddapi.models.Post;
import com.openclassrooms.mddapi.models.User;
import com.openclassrooms.mddapi.services.PostService;
import com.openclassrooms.mddapi.services.UserService;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;
import java.security.Principal;

@RestController
@RequestMapping("/api/post")
public class PostController {

    private final PostMapper postMapper;
    private final PostService postService;

    private final UserService userService;

    public PostController(PostService postService,
                          PostMapper postMapper, UserService userService) {
        this.postMapper = postMapper;
        this.postService = postService;
        this.userService = userService;
    }

    @GetMapping("/{id}")
    public ResponseEntity<?> findById(@PathVariable("id") String id) {
        try {
            Post post = this.postService.findById(Long.valueOf(id));

            if (post == null) {
                return ResponseEntity.notFound().build();
            }

            return ResponseEntity.ok().body(this.postMapper.toDto(post));
        } catch (NumberFormatException e) {
            return ResponseEntity.badRequest().build();
        }
    }

    @PostMapping()
    public ResponseEntity<?> create(Principal principal, @Valid @RequestBody PostDTO postDto) {
        User user = this.userService.findByEmail(SecurityContextHolder.getContext().getAuthentication().getName());
        postDto.setAuthor_id(user.getId());
        Post post = this.postService.create(this.postMapper.toEntity(postDto));

        return ResponseEntity.ok().body(this.postMapper.toDto(post));
    }
}
