package green.ecomap.tmdb_clone_coding.company.dto;

import green.ecomap.tmdb_clone_coding.company.domain.Company;
import green.ecomap.tmdb_clone_coding.country.domain.Country;
import lombok.AllArgsConstructor;
import lombok.Data;

@Data
@AllArgsConstructor
public class CompanyDTO {
    private Long id;
    private String name;
    private String logoPath;
    private String originCountry;

    public static CompanyDTO from(Company company) {
        if (company == null) return null;

        Country country = company.getOriginalCountry();
        String countryCode = country.getIso_3166_1(); // ex) US, FR, KR

        return new CompanyDTO(
            company.getId(), 
            company.getName(),
            company.getLogoPath(),
            countryCode
        );
    }
}
