package com.openclassrooms.mddapi.payload.request;

import lombok.Data;

import javax.validation.constraints.NotBlank;

@Data
public class ProcessStateRequest {

    @NotBlank
    private Long id;


}
