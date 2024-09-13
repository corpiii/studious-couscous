package green.ecomap.tmdb_clone_coding.movie.dto;

import green.ecomap.tmdb_clone_coding.language.domain.Language;
import lombok.AllArgsConstructor;
import lombok.Data;

@Data
@AllArgsConstructor
public class SpokenLanguage {
    private String englishName;
    private String iso_639_1;
    private String name;

    public static SpokenLanguage from(Language language) {
        if (language == null) return null;

        return new SpokenLanguage(
            language.getEnglishName(),
            language.getIso_639_1(),
            language.getName()
        );
    }
}
