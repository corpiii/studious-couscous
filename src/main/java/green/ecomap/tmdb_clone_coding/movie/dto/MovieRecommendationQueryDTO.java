package green.ecomap.tmdb_clone_coding.movie.dto;

import green.ecomap.tmdb_clone_coding.movie.domain.MovieInfo;
import lombok.AllArgsConstructor;
import lombok.Data;

@Data
@AllArgsConstructor
public class MovieRecommendationQueryDTO {
    private MovieInfo movieInfo;
    private Long genreCount;
}
