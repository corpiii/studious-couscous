package green.ecomap.tmdb_clone_coding.movie.domain;

import lombok.Data;
import org.springframework.format.annotation.DateTimeFormat;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import java.time.LocalDate;

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

    private Long collectionId;

    private Long languageId;
}
