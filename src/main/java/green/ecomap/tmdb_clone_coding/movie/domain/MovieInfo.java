package green.ecomap.tmdb_clone_coding.movie.domain;

import green.ecomap.tmdb_clone_coding.genre.domain.Genre;
import green.ecomap.tmdb_clone_coding.language.domain.Language;
import green.ecomap.tmdb_clone_coding.movie_collection.domain.MovieCollection;
import lombok.Data;
import org.springframework.format.annotation.DateTimeFormat;

import javax.persistence.*;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

@Entity
@Data
public class MovieInfo {
    @Id
    @GeneratedValue
    @Column(name = "movie_id")
    private Long id;

    private String title;

    private String originalTitle;

    private String overview;

    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private LocalDate releaseDate;

    private Long runtime;

    private String status;

    private Long budget;

    private Long revenue;

    private Double voteAverage;

    private Long voteCount;

    private Double popularity;

    private String tagline;

    private String homepage;

    private String posterPath;

    private String backdropPath;

    private Boolean adult;

    private Boolean video;

    private String imdbId;

    @OneToOne
    @JoinColumn(name = "collection_id")
    private MovieCollection belongsToCollection;

    @OneToOne
    @JoinColumn(name = "language_id")
    private Language originalLanguage;

    @ManyToMany
    @JoinTable(
        name = "movie_genre",
        joinColumns = @JoinColumn(name = "movie_id"),
        inverseJoinColumns = @JoinColumn(name = "genre_id")
    )
    private List<Genre> genres = new ArrayList<>();
}
