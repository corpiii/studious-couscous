package green.ecomap.tmdb_clone_coding.movie_collection.domain;

import com.fasterxml.jackson.annotation.JsonIgnore;
import green.ecomap.tmdb_clone_coding.movie.domain.MovieInfo;
import lombok.Data;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.List;

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

    @OneToMany(mappedBy = "belongsToCollection")
    @JsonIgnore
    private List<MovieInfo> movieList = new ArrayList<>();
}
