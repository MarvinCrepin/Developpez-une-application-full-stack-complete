package com.openclassrooms.mddapi.controllers;

import com.openclassrooms.mddapi.dto.user.PostDTO;
import com.openclassrooms.mddapi.dto.user.SubjectDTO;
import com.openclassrooms.mddapi.mapper.PostMapper;
import com.openclassrooms.mddapi.mapper.SubjectMapper;
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
import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

@RestController
@RequestMapping("/api/subscription")
public class SubscriptionController {

    private final SubscriptionService subscriptionService;

    private final UserService userService;

    private final SubjectService subjectService;

    private final SubjectMapper subjectMapper;

    public SubscriptionController(SubscriptionService subscriptionService,
                                  UserService userService, SubjectService subjectService, SubjectMapper subjectMapper) {
        this.subscriptionService = subscriptionService;
        this.userService = userService;
        this.subjectService = subjectService;
        this.subjectMapper = subjectMapper;
    }
    @PostMapping("/{id}")
    public ResponseEntity<?> processState(@PathVariable("id") String id) {
        User user = this.userService.findByEmail(SecurityContextHolder.getContext().getAuthentication().getName());
        Subject subject = this.subjectService.findById(Long.valueOf(id));
        try {
            Optional<Subscription> subscription = this.subscriptionService.findByUserAndSubject(user, subject);

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

    @GetMapping("")
    public ResponseEntity<?> findByUser() {
        User user = this.userService.findByEmail(SecurityContextHolder.getContext().getAuthentication().getName());
        Optional<List<Subscription>> subscriptions = this.subscriptionService.findByUser(user);
        try {
            if (subscriptions.isPresent()) {
                List<SubjectDTO> list = new ArrayList<>(subscriptions.get().size());

                for (Subscription subscription : subscriptions.get()) {
                    list.add(this.subjectMapper.toDto(subscription.getSubject()));
                }
                return ResponseEntity.ok().body(list);
            }
            return ResponseEntity.ok().build();

        } catch (NumberFormatException e) {
            return ResponseEntity.badRequest().build();
        }
    }
}
