package com.openclassrooms.mddapi.payload.request;

import javax.validation.constraints.*;

import lombok.Data;

@Data
public class SignupRequest {
  @NotBlank
  @Size(max = 50)
  @Email
  private String email;

  @NotBlank
  private String username;

  @NotBlank
  @Size(min = 6, max = 40)
  private String password;
}