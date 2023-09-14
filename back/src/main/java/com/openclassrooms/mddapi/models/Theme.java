package com.openclassrooms.mddapi.models;

import lombok.*;
import lombok.experimental.Accessors;
import org.hibernate.annotations.UpdateTimestamp;
import org.springframework.data.annotation.CreatedDate;
import org.springframework.data.jpa.domain.support.AuditingEntityListener;

import javax.persistence.*;
import javax.validation.constraints.Email;
import javax.validation.constraints.Size;
import java.time.LocalDateTime;

@Entity
@Table(name = "THEMES")
@Data
@Accessors(chain = true)
@EntityListeners(AuditingEntityListener.class)
@EqualsAndHashCode(of = {"id"})
@Builder
@RequiredArgsConstructor
@AllArgsConstructor
@ToString
public class Theme {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @NonNull
    private String name;

}
