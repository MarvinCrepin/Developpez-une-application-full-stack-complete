package com.openclassrooms.mddapi.models;

import lombok.*;
import lombok.experimental.Accessors;
import org.springframework.data.annotation.CreatedDate;
import org.springframework.data.jpa.domain.support.AuditingEntityListener;

import javax.persistence.*;
import java.time.LocalDateTime;

@Entity
@Table(name = "COMMENTS")
@Data
@Accessors(chain = true)
@EntityListeners(AuditingEntityListener.class)
@EqualsAndHashCode(of = {"id"})
@Builder
@RequiredArgsConstructor
@NoArgsConstructor
@AllArgsConstructor
@ToString
public class Comment {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @ManyToOne
    @NonNull
    @JoinColumn(name = "post_id")
    private Post post;

    @ManyToOne
    @NonNull
    @JoinColumn(name = "user_id")
    private User user;

    private String content;

    @CreatedDate
    @Column(name = "created_date")
    private LocalDateTime createdDate;

    public Comment(Post post, User user, String content) {
        this.setPost(post);
        this.setUser(user);
        this.setContent(content);
    }
}
