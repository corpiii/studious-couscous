package green.ecomap.tmdb_clone_coding.country.domain;

import com.fasterxml.jackson.annotation.JsonIgnore;
import green.ecomap.tmdb_clone_coding.movie.domain.MovieInfo;
import lombok.Data;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.List;

@Entity
@Data
public class Country {
    @Id
    @GeneratedValue
    @Column(name = "country_id")
    private Long id;

    private String iso_3166_1;

    private String name;

    @ManyToMany(mappedBy = "originCountry")
    @JsonIgnore
    private List<MovieInfo> originMovieList = new ArrayList<>();

    @ManyToMany(mappedBy = "productionCompanies")
    @JsonIgnore
    private List<MovieInfo> productionMovieList = new ArrayList<>();
}
