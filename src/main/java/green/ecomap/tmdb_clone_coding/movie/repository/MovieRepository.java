package green.ecomap.tmdb_clone_coding.movie.repository;

import green.ecomap.tmdb_clone_coding.movie.domain.MovieInfo;
import org.springframework.data.jpa.repository.JpaRepository;

public interface MovieRepository extends JpaRepository<MovieInfo, Long> { }
