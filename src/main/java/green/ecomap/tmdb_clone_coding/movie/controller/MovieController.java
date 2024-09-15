package green.ecomap.tmdb_clone_coding.movie.controller;

import green.ecomap.tmdb_clone_coding.movie.dto.MovieDTO;
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
    public ResponseEntity<?> fetchMovieDetailById(@PathVariable("id") Long id) {
        try {
            MovieDTO movieDTO = movieService.findById(id);

            return ResponseEntity.ok(movieDTO);
        } catch (Exception e) {
            return ResponseEntity.status(HttpStatus.NOT_FOUND).body(e.getMessage());
        }
    }

    @GetMapping("/{id}/recommendations")
    public ResponseEntity<?> fetchRecommendationMovieById(
            @PathVariable("id") Long id,
            @RequestParam(value = "page", required = false, defaultValue = "1") int page) {
        return ResponseEntity.ok(movieService.findAllRecommendationById(id, page));
    }
}

