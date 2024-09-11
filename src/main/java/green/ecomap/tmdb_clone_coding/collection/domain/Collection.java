package green.ecomap.tmdb_clone_coding.collection.domain;

import lombok.Data;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity
@Data
public class Collection {
    @Id
    @GeneratedValue
    @Column(name = "collection_id")
    private Long id;

    private String name;

    private String posterPath;

    private String backdropPath;
}
