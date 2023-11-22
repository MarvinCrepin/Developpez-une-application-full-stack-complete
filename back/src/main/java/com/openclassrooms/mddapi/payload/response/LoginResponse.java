package com.openclassrooms.mddapi.payload.response;

import com.openclassrooms.mddapi.security.services.UserDetailsImpl;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class LoginResponse {

    private String jwt;

    private UserDetailsImpl userDetails;

    public LoginResponse(String jwt, UserDetailsImpl principal) {
        this.setJwt(jwt);
        this.setUserDetails(principal);
    }
}
