package green.ecomap.tmdb_clone_coding.genre.domain;

import lombok.Data;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity
@Data
public class Genre {
    @Id
    @GeneratedValue
    @Column(name = "genre_id")
    private Long id;

    private String name;
}
