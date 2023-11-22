package com.openclassrooms.mddapi.payload.request;

import lombok.Data;

import javax.validation.constraints.Email;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Size;

@Data
public class UpdateUserRequest {

    @Size(max = 50)
    private String email;

    private String username;

}
