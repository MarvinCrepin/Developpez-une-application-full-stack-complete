package com.openclassrooms.mddapi.controllers;

import com.openclassrooms.mddapi.dto.PostDTO;
import com.openclassrooms.mddapi.mapper.PostMapper;
import com.openclassrooms.mddapi.models.Post;
import com.openclassrooms.mddapi.models.Subscription;
import com.openclassrooms.mddapi.models.User;
import com.openclassrooms.mddapi.services.PostService;
import com.openclassrooms.mddapi.services.SubscriptionService;
import com.openclassrooms.mddapi.services.UserService;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;
import java.security.Principal;
import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

@RestController
@RequestMapping("/api/post")
public class PostController {

    private final PostMapper postMapper;
    private final PostService postService;

    private final UserService userService;

    private final SubscriptionService subscriptionService;


    public PostController(PostService postService,
                          PostMapper postMapper, UserService userService, SubscriptionService subscriptionService) {
        this.postMapper = postMapper;
        this.postService = postService;
        this.userService = userService;
        this.subscriptionService = subscriptionService;
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

    @GetMapping("/feed")
    public ResponseEntity<?> findByUserSubscriptions() {
        User user = this.userService.findByEmail(SecurityContextHolder.getContext().getAuthentication().getName());
        Optional<List<Subscription>> subscriptions = this.subscriptionService.findByUser(user);

        try {
            if(subscriptions.isEmpty()) {
                return ResponseEntity.ok().build();
            }

            List<PostDTO> list = new ArrayList<>(subscriptions.get().size());
            for (Subscription subscription : subscriptions.get()) {
                Optional<List<Post>> posts = this.postService.findBySubject(subscription.getSubject());
                if (posts.isPresent()) {
                   for (Post post : posts.get()) {
                       list.add(this.postMapper.toDto(post));
                   }
                }
            }
            return ResponseEntity.ok().body(list);
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
