package green.ecomap.tmdb_clone_coding.movie.service;

import green.ecomap.tmdb_clone_coding.movie.domain.MovieInfo;
import green.ecomap.tmdb_clone_coding.movie.repository.MovieRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.Optional;

@Service
@RequiredArgsConstructor
@Transactional
public class MovieService {
    private final MovieRepository movieRepository;

    public Optional<MovieInfo> findById(Long id) {
        return movieRepository.findById(id);
    }
}
