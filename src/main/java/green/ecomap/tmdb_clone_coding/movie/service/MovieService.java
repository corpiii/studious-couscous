package green.ecomap.tmdb_clone_coding.movie.service;

import green.ecomap.tmdb_clone_coding.movie.domain.MovieInfo;
import green.ecomap.tmdb_clone_coding.movie.dto.MovieDTO;
import green.ecomap.tmdb_clone_coding.movie.dto.MovieRecommendationQueryDTO;
import green.ecomap.tmdb_clone_coding.movie.dto.MovieRecommendationResponseDTO;
import green.ecomap.tmdb_clone_coding.movie.error.MovieError;
import green.ecomap.tmdb_clone_coding.movie.error.MovieException;
import green.ecomap.tmdb_clone_coding.movie.repository.MovieRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.data.domain.*;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@RequiredArgsConstructor
@Transactional
public class MovieService {
    private final int SIZE_PER_PAGE = 20;
    private final MovieRepository movieRepository;

    public MovieDTO findById(Long id) throws MovieException {
        MovieInfo movieInfo = movieRepository.findById(id)
                .orElseThrow(() -> new MovieException(MovieError.NOT_FOUND_MOVIE));

        return MovieDTO.from(movieInfo);
    }

    public MovieRecommendationResponseDTO findAllRecommendationById(Long id, int page) {
        PageRequest pageRequest = PageRequest.of(page - 1, SIZE_PER_PAGE);
        Page<MovieRecommendationQueryDTO> movieInfoPage = movieRepository.findAllByIdOrderByGenreDescAndPopularityDesc(id, pageRequest);
        MovieRecommendationResponseDTO response = MovieRecommendationResponseDTO.from(movieInfoPage);

        return response;
    }
}
