package green.ecomap.tmdb_clone_coding.movie.controller;

import green.ecomap.tmdb_clone_coding.base.response.ApiResponse;
import green.ecomap.tmdb_clone_coding.movie.dto.MovieDTO;
import green.ecomap.tmdb_clone_coding.movie.dto.MovieRecommendationResponseDTO;
import green.ecomap.tmdb_clone_coding.movie.service.MovieService;
import lombok.RequiredArgsConstructor;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

@RestController
@RequiredArgsConstructor
@RequestMapping("/movie")
public class MovieController {
    private final MovieService movieService;

    @GetMapping("/{id}")
    public ResponseEntity<ApiResponse<MovieDTO>> fetchMovieDetailById(@PathVariable("id") Long id) {
        try {
            MovieDTO movieDTO = movieService.findById(id);
            ApiResponse<MovieDTO> apiResponse = new ApiResponse<>(true, null, movieDTO);

            return ResponseEntity.ok(apiResponse);
        } catch (Exception e) {
            ApiResponse<MovieDTO> apiResponse = new ApiResponse<>(false, e.getMessage(), null);

            return ResponseEntity.status(HttpStatus.NOT_FOUND).body(apiResponse);
        }
    }

    @GetMapping("/{id}/recommendations")
    public ResponseEntity<ApiResponse<MovieRecommendationResponseDTO>> fetchRecommendationMovieById(
            @PathVariable("id") Long id,
            @RequestParam(value = "page", required = false, defaultValue = "1") int page) {

        MovieRecommendationResponseDTO recommendations = movieService.findAllRecommendationById(id, page);
        ApiResponse<MovieRecommendationResponseDTO> apiResponse = new ApiResponse<>(true, null, recommendations);

        return ResponseEntity.ok(apiResponse);
    }
}

