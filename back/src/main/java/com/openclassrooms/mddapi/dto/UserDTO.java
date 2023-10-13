package com.openclassrooms.mddapi.dto;

import com.fasterxml.jackson.annotation.JsonIgnore;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.NonNull;

import javax.validation.constraints.Email;
import javax.validation.constraints.Size;
import java.time.LocalDateTime;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class UserDTO {

    @NonNull
    private Long id;

    @Email
    private String email;

    @NonNull
    @Size(max = 20)
    private String username;

    @JsonIgnore
    @Size(max = 120)
    private String password;

    @NonNull
    private LocalDateTime createdAt;
}