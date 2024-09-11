package green.ecomap.tmdb_clone_coding.company.domain;

import green.ecomap.tmdb_clone_coding.country.domain.Country;
import lombok.Data;

import javax.persistence.*;

@Entity
@Data
@Table(name = "production_company")
public class Company {
    @Id
    @GeneratedValue
    @Column(name = "production_company_id")
    private Long id;

    private String name;

    private String logoPath;

    @OneToOne
    @JoinColumn(name = "country_id")
    private Country originalCountry;
}
