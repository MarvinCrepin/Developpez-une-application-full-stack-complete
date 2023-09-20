package com.openclassrooms.mddapi.services;

import com.openclassrooms.mddapi.models.Subject;
import com.openclassrooms.mddapi.models.Subscription;
import com.openclassrooms.mddapi.models.User;
import com.openclassrooms.mddapi.repository.SubscriptionRepository;
import com.openclassrooms.mddapi.repository.UserRepository;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class SubscriptionService {
    private final SubscriptionRepository subscriptionRepository;

    private final UserRepository userRepository;

    public SubscriptionService(SubscriptionRepository subscriptionRepository, UserRepository userRepository) {
        this.subscriptionRepository = subscriptionRepository;
        this.userRepository = userRepository;
    }

    public Subscription create(Subscription subscription) {
        return this.subscriptionRepository.save(subscription);
    }

    public void delete(Long id) {
        this.subscriptionRepository.deleteById(id);
    }

    public List<Subscription> findAll() {
        return this.subscriptionRepository.findAll();
    }

    public Subscription findById(Long id) {
        return this.subscriptionRepository.findById(id).orElse(null);
    }

    public Optional<Subscription> findByUserAndSubject(User user, Subject subject) {
        return this.subscriptionRepository.findByUserAndSubject(user, subject);
    }

    public Optional<List<Subscription>> findByUser(User user) {
        return this.subscriptionRepository.findByUser(user);
    }

    public Subscription update(Long id, Subscription subscription) {
        subscription.setId(id);
        return this.subscriptionRepository.save(subscription);
    }


}
