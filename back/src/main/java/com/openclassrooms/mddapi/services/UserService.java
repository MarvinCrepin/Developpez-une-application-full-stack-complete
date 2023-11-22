package com.openclassrooms.mddapi.services;

import com.openclassrooms.mddapi.models.User;
import com.openclassrooms.mddapi.payload.request.SignupRequest;
import com.openclassrooms.mddapi.repository.UserRepository;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import java.util.Optional;

@Service
public class UserService {
    private final UserRepository userRepository;

    private final PasswordEncoder passwordEncoder;

    public UserService(UserRepository userRepository, PasswordEncoder passwordEncoder) {
        this.userRepository = userRepository;
        this.passwordEncoder = passwordEncoder;
    }

    public void delete(Long id) {
        this.userRepository.deleteById(id);
    }

    public User findByEmail(String email) { return this.userRepository.findByEmail(email).orElse(null); }

    public User findById(Long id) {
        return this.userRepository.findById(id).orElse(null);
    }

    public User save(User user) { return this.userRepository.save(user); }

    public User register(SignupRequest signUpRequest) throws Exception {
        if (findByEmail(signUpRequest.getEmail()) != null) {
            throw new Exception();
        }

        User user = new User(signUpRequest.getEmail(),
                signUpRequest.getUsername(),
                passwordEncoder.encode(signUpRequest.getPassword()));

        return save(user);
    }

    public Optional<User> getCurrentUser() {
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        if (authentication != null) {
            String userEmail = authentication.getName();
            return userRepository.findByEmail(userEmail);
        }
        return Optional.empty();
    }

    public Optional<User> updateCurrentUserInformation(String newUsername, String newEmail) {
        Optional<User> currentUserOpt = getCurrentUser(); // Obtenez l'utilisateur courant
        if (currentUserOpt.isPresent()) {
            User currentUser = currentUserOpt.get(); // Extrait l'objet User de l'Optional

            if (newUsername != null && !newUsername.isEmpty()) {
                currentUser.setUsername(newUsername);
            }

            if (newEmail != null && !newEmail.isEmpty()) {
                currentUser.setEmail(newEmail);
            }

            return Optional.of(userRepository.save(currentUser));
        }
        return Optional.empty();
    }

}
