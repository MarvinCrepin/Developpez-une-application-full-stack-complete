package com.openclassrooms.mddapi.models;

import lombok.*;
import lombok.experimental.Accessors;
import org.springframework.data.annotation.CreatedDate;
import org.springframework.data.jpa.domain.support.AuditingEntityListener;
import javax.persistence.*;
import java.time.LocalDateTime;

@Entity
@Table(name = "SUBSCRIPTIONS")
@Data
@Accessors(chain = true)
@EntityListeners(AuditingEntityListener.class)
@EqualsAndHashCode(of = {"id"})
@Builder
@NoArgsConstructor
@RequiredArgsConstructor
@AllArgsConstructor
@ToString
public class Subscription {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @OneToOne
    @NonNull
    private Subject subject;

    @OneToOne
    @NonNull
    private User user;

}
