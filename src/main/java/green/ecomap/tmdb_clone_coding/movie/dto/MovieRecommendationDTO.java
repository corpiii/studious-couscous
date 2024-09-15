package green.ecomap.tmdb_clone_coding.movie.dto;

import green.ecomap.tmdb_clone_coding.genre.domain.Genre;
import green.ecomap.tmdb_clone_coding.movie.domain.MovieInfo;
import lombok.AllArgsConstructor;
import lombok.Data;

import java.time.LocalDate;
import java.util.List;
import java.util.stream.Collectors;

@Data
@AllArgsConstructor
public class MovieRecommendationDTO {
    private String backdropPath;
    private Long id;
    private String title;
    private String originalTitle;
    private String overview;
    private String posterPath;
    private String mediaType;
    private boolean adult;
    private String originalLanguage;
    private List<Long> genreIds;
    private Double popularity;
    private LocalDate releaseDate;
    private boolean video;
    private Double voteAverage;
    private Long voteCount;
    
    public static MovieRecommendationDTO from(MovieInfo movieInfo) {
        if (movieInfo == null) return null;

        String originalLanguage = movieInfo.getOriginalLanguage().getIso_639_1();
        List<Long> genreIds = movieInfo.getGenres().stream().map(Genre::getId).collect(Collectors.toList());

        return new MovieRecommendationDTO(
            movieInfo.getBackdropPath(),
            movieInfo.getId(),
            movieInfo.getTitle(),
            movieInfo.getOriginalTitle(),
            movieInfo.getTitle(),
            movieInfo.getPosterPath(),
            "movie",
            movieInfo.getAdult(),
            originalLanguage,
            genreIds,
            movieInfo.getPopularity(),
            movieInfo.getReleaseDate(),
            movieInfo.getVideo(),
            movieInfo.getVoteAverage(),
            movieInfo.getVoteCount()
        ); 
    }
}
