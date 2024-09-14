package green.ecomap.tmdb_clone_coding.movie.dto;

import green.ecomap.tmdb_clone_coding.movie.domain.MovieInfo;
import lombok.AllArgsConstructor;
import lombok.Data;
import org.springframework.data.domain.Page;

import java.util.List;
import java.util.stream.Collectors;

@Data
@AllArgsConstructor
public class MovieRecommendationResponseDTO {
    private int page;
    private List<MovieRecommendationDTO> results;
    private int totalPages;
    private Long totalResults;

    public static MovieRecommendationResponseDTO from(Page<MovieRecommendationQueryDTO> paginationResult) {
        int currentPage = paginationResult.getPageable().getPageNumber() + 1;
        List<MovieRecommendationDTO> recommendationDTOList = paginationResult.getContent().stream().map(result -> {
            MovieInfo movieInfo = result.getMovieInfo();

            return MovieRecommendationDTO.from(movieInfo);
        }).collect(Collectors.toList());
        int totalPages = paginationResult.getTotalPages();
        long totalResults = paginationResult.getTotalElements();

        return new MovieRecommendationResponseDTO(
                currentPage,
                recommendationDTOList,
                totalPages,
                totalResults
        );
    }
}
