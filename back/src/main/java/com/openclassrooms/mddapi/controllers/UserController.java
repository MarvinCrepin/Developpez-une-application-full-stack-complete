package com.openclassrooms.mddapi.controllers;

import com.openclassrooms.mddapi.dto.UserDTO;
import com.openclassrooms.mddapi.mapper.UserMapper;
import com.openclassrooms.mddapi.models.User;
import com.openclassrooms.mddapi.payload.request.UpdateUserRequest;
import com.openclassrooms.mddapi.services.UserService;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.Authentication;
import org.springframework.web.bind.annotation.*;

import java.util.Optional;

@RestController
@RequestMapping("/api/user")
public class UserController {

    private final UserMapper userMapper;
    private final UserService userService;


    public UserController(UserService userService,
                          UserMapper userMapper) {
        this.userMapper = userMapper;
        this.userService = userService;
    }


    @GetMapping("/me")
    public ResponseEntity<?> me(Authentication authentication) {
        try {
            String email = authentication.getName();
            if (email == null) {
                return ResponseEntity.notFound().build();
            }
            User user = this.userService.findByEmail(email);
            return ResponseEntity.ok().body(this.userMapper.toDto(user));
        } catch (NumberFormatException e) {
            return ResponseEntity.badRequest().build();
        }
    }

    @GetMapping("/{id}")
    public ResponseEntity<?> findById(@PathVariable("id") String id) {
        try {
            User user = this.userService.findById(Long.valueOf(id));

            if (user == null) {
                return ResponseEntity.notFound().build();
            }

            return ResponseEntity.ok().body(this.userMapper.toDto(user));
        } catch (NumberFormatException e) {
            return ResponseEntity.badRequest().build();
        }
    }

    @PutMapping("/update")
    public ResponseEntity<UserDTO> updateCurrentUserInformation(@RequestBody UpdateUserRequest updateUser) {
        Optional<User> updatedUser = userService.updateCurrentUserInformation(updateUser.getUsername(), updateUser.getEmail());
        if (updatedUser.isPresent()) {
            return ResponseEntity.ok(userMapper.toDto(updatedUser.get()));
        } else {
            return ResponseEntity.status(HttpStatus.UNAUTHORIZED).build();
        }
    }


}
