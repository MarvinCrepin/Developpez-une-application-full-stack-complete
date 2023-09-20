package com.openclassrooms.mddapi.dto.user;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.NonNull;

import java.time.LocalDateTime;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class SubjectDTO {

    @NonNull
    private Long id;

    @NonNull
    private String description;

    @NonNull
    private String name;

}
