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

    @Column
    private String title;

    @Column
    private String originalTitle;

    @Column
    private String overview;

    @Column
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private LocalDate releaseDate;

    @Column
    private Long runtime;

    @Column
    private String status;

    @Column
    private Long budget;

    @Column
    private Long revenue;

    @Column
    private Double voteAverage;

    @Column
    private Long voteCount;

    @Column
    private Double popularity;

    @Column
    private String tagline;

    @Column
    private String homepage;

    @Column
    private String posterPath;

    @Column
    private String backdropPath;

    @Column
    private Boolean adult;

    @Column
    private Boolean video;

    @Column
    private String imdbId;

    @Column
    private Long collectionId;

    @Column
    private Long languageId;
}
