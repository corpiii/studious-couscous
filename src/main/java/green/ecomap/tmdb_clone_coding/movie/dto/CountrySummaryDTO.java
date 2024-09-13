package green.ecomap.tmdb_clone_coding.movie.dto;

import green.ecomap.tmdb_clone_coding.country.domain.Country;
import lombok.AllArgsConstructor;
import lombok.Data;

@Data
@AllArgsConstructor
public class CountrySummaryDTO {
    private String iso_3166_1;
    private String name;

    public static CountrySummaryDTO from(Country country) {
        return new CountrySummaryDTO(
            country.getIso_3166_1(),
            country.getName()
        );
    }
}
