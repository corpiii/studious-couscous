package green.ecomap.tmdb_clone_coding.company.domain;

import lombok.Data;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity
@Data
public class Company {
    @Id
    @GeneratedValue
    @Column(name = "company_id")
    private Long id;

    private String name;

    private String logoPath;

    private String countryId;
}
