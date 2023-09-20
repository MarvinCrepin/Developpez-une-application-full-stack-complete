package com.openclassrooms.mddapi.controllers;

import com.openclassrooms.mddapi.dto.user.PostDTO;
import com.openclassrooms.mddapi.mapper.PostMapper;
import com.openclassrooms.mddapi.models.Post;
import com.openclassrooms.mddapi.models.Subject;
import com.openclassrooms.mddapi.models.Subscription;
import com.openclassrooms.mddapi.models.User;
import com.openclassrooms.mddapi.payload.response.MessageResponse;
import com.openclassrooms.mddapi.services.PostService;
import com.openclassrooms.mddapi.services.SubjectService;
import com.openclassrooms.mddapi.services.SubscriptionService;
import com.openclassrooms.mddapi.services.UserService;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;
import java.util.List;
import java.util.Optional;

@RestController
@RequestMapping("/api/subscription")
public class SubscriptionController {

    private final SubscriptionService subscriptionService;

    private final UserService userService;

    private final SubjectService subjectService;

    public SubscriptionController(SubscriptionService subscriptionService,
                                  UserService userService, SubjectService subjectService) {
        this.subscriptionService = subscriptionService;
        this.userService = userService;
        this.subjectService = subjectService;
    }
    @PostMapping("/{id}")
    public ResponseEntity<?> processState(@PathVariable("id") String id) {
        User user = this.userService.findByEmail(SecurityContextHolder.getContext().getAuthentication().getName());
        Subject subject = this.subjectService.findById(Long.valueOf(id));
        try {
            Optional<Subscription> subscription = this.subscriptionService.findByUserAndSubject(user, subject);
            System.out.println(subscription);

            if (subscription.isPresent()) {
                this.subscriptionService.delete(subscription.get().getId());
                return ResponseEntity.ok().body(new MessageResponse(String.format("Abonnement pour le thème %s supprimé !", subject.getName())));
            }

            this.subscriptionService.create(new Subscription(subject, user));
            return ResponseEntity.ok().body(new MessageResponse(String.format("Abonnement pour le thème %s ajouté !", subject.getName())));

        } catch (NumberFormatException e) {
            return ResponseEntity.badRequest().build();
        }
    }
}
