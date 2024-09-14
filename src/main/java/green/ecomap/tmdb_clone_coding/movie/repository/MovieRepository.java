package green.ecomap.tmdb_clone_coding.movie.repository;

import green.ecomap.tmdb_clone_coding.movie.domain.MovieInfo;
import green.ecomap.tmdb_clone_coding.movie.dto.MovieRecommendationQueryDTO;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

public interface MovieRepository extends JpaRepository<MovieInfo, Long> {
    @Query("select new green.ecomap.tmdb_clone_coding.movie.dto.MovieRecommendationQueryDTO(m, count(g)) " +
            "from MovieInfo m " +
            "join m.genres g " +
            "where m.id != :id and g in " +
            "(select g2 from MovieInfo m2 join m2.genres g2 where m2.id = :id) " +
            "group by m " +
            "order by count(g) desc, m.popularity desc")
    Page<MovieRecommendationQueryDTO> findAllByIdOrderByGenreDescAndPopularityDesc(@Param("id") Long movieId, Pageable pageable);
}
