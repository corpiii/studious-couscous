package green.ecomap.tmdb_clone_coding.company.domain;

import com.fasterxml.jackson.annotation.JsonIgnore;
import green.ecomap.tmdb_clone_coding.country.domain.Country;
import green.ecomap.tmdb_clone_coding.movie.domain.MovieInfo;
import lombok.Data;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.List;

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

    @ManyToMany(mappedBy = "productionCompanies")
    @JsonIgnore
    private List<MovieInfo> productionMovieList = new ArrayList<>();
}
