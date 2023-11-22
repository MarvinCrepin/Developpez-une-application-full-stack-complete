package com.openclassrooms.mddapi.dto;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.openclassrooms.mddapi.models.Subject;
import com.openclassrooms.mddapi.models.User;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.NonNull;
import org.springframework.data.annotation.CreatedDate;

import javax.persistence.*;
import java.time.LocalDateTime;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class PostDTO {

    private Long id;

    private String subjectName;

    private Long subject_id;

    @JsonIgnore
    private Long author_id;

    private String author;

    private String title;

    private String content;

    private LocalDateTime createdDate;
}
