package green.ecomap.tmdb_clone_coding.country.domain;

import lombok.Data;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity
@Data
public class Country {
    @Id
    @GeneratedValue
    @Column(name = "country_id")
    private Long id;

    private String iso_3166_1;

    private String name;
}
