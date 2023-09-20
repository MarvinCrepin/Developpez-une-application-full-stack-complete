package com.openclassrooms.mddapi.dto.user;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.time.LocalDateTime;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class CommentDTO {

    private Long postId;

    private String content;

    private String username;

    private LocalDateTime createdDate;

}
