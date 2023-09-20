package com.openclassrooms.mddapi.controllers;

import com.openclassrooms.mddapi.dto.CommentDTO;
import com.openclassrooms.mddapi.mapper.CommentMapper;
import com.openclassrooms.mddapi.models.Comment;
import com.openclassrooms.mddapi.models.Post;
import com.openclassrooms.mddapi.models.User;
import com.openclassrooms.mddapi.payload.request.CommentRequest;
import com.openclassrooms.mddapi.payload.request.LoginRequest;
import com.openclassrooms.mddapi.payload.request.SignupRequest;
import com.openclassrooms.mddapi.payload.response.JwtResponse;
import com.openclassrooms.mddapi.payload.response.MessageResponse;
import com.openclassrooms.mddapi.security.services.UserDetailsImpl;
import com.openclassrooms.mddapi.services.CommentService;
import com.openclassrooms.mddapi.services.PostService;
import com.openclassrooms.mddapi.services.UserService;
import org.springframework.http.ResponseEntity;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;
import java.util.ArrayList;
import java.util.List;
import java.util.Optional;


@RestController
@RequestMapping("/api/comment")
public class CommentController {
    private final UserService userService;

    private final PostService postService;

    private final CommentService commentService;

    private final CommentMapper commentMapper;


    CommentController(UserService userService, PostService postService, CommentService commentService, CommentMapper commentMapper) {
        this.userService = userService;
        this.postService = postService;
        this.commentService = commentService;
        this.commentMapper = commentMapper;
    }

    @PostMapping()
    public ResponseEntity<?> create(@Valid @RequestBody CommentRequest commentRequest) {
        Post post = this.postService.findById(commentRequest.getPostId());
        User user = this.userService.findByEmail(SecurityContextHolder.getContext().getAuthentication().getName());

        if(post == null) {
            return ResponseEntity
                    .badRequest()
                    .build();
        }
        Comment comment = new Comment(post, user, commentRequest.getContent());

        this.commentService.create(comment);
        return ResponseEntity.ok().build();
    }

    @GetMapping("/posts/{postId}")
    public ResponseEntity<?> findByPostId(@PathVariable("postId") String postId) {
        Post post = this.postService.findById(Long.valueOf(postId));
        Optional<List<Comment>> comments = this.commentService.findByPost(post);
        if(comments.isEmpty()) {
            return ResponseEntity.ok().body(new ArrayList<>());

        }

        List<CommentDTO> list = new ArrayList<CommentDTO>(comments.get().size());
        for (Comment comment : comments.get()) {
            list.add(this.commentMapper.toDto(comment));
        }
        return ResponseEntity.ok().body(list);
    }


}
