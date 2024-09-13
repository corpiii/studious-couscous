package green.ecomap.tmdb_clone_coding.genre.dto;

import green.ecomap.tmdb_clone_coding.genre.domain.Genre;
import lombok.AllArgsConstructor;
import lombok.Data;

@Data
@AllArgsConstructor
public class GenreDTO {
    private Long id;
    private String name;

    public static GenreDTO from(Genre genre) {
        return new GenreDTO(genre.getId(),genre.getName());
    }
}
