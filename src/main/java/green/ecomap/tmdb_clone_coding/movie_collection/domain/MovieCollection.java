package green.ecomap.tmdb_clone_coding.movie_collection.domain;

import lombok.Data;

import javax.persistence.*;

@Entity
@Data
@Table(name = "Collection")
public class MovieCollection {
    @Id
    @GeneratedValue
    @Column(name = "collection_id")
    private Long id;

    private String name;

    private String posterPath;

    private String backdropPath;
}
