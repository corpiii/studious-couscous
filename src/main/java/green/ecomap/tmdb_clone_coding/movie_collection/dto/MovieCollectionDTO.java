package green.ecomap.tmdb_clone_coding.movie_collection.dto;

import green.ecomap.tmdb_clone_coding.movie_collection.domain.MovieCollection;
import lombok.AllArgsConstructor;
import lombok.Data;

@Data
@AllArgsConstructor
public class MovieCollectionDTO {
    private Long id;
    private String name;
    private String posterPath;
    private String backdropPath;

    public static MovieCollectionDTO from(MovieCollection movieCollection) {
        if (movieCollection == null) return null;

        return new MovieCollectionDTO(
            movieCollection.getId(),
            movieCollection.getName(),
            movieCollection.getPosterPath(),
            movieCollection.getBackdropPath()
        );
    }
}
