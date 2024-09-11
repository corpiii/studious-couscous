package green.ecomap.tmdb_clone_coding.genre.domain;

import green.ecomap.tmdb_clone_coding.movie.domain.MovieInfo;
import lombok.Data;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.List;

@Entity
@Data
public class Genre {
    @Id
    @GeneratedValue
    @Column(name = "genre_id")
    private Long id;

    private String name;

    @ManyToMany(mappedBy = "genres")
    private List<MovieInfo> movieList = new ArrayList<>();
}
