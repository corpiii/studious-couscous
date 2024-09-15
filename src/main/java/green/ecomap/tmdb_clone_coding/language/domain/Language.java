package green.ecomap.tmdb_clone_coding.language.domain;

import com.fasterxml.jackson.annotation.JsonIgnore;
import green.ecomap.tmdb_clone_coding.movie.domain.MovieInfo;
import lombok.Data;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.List;

@Entity
@Data
public class Language {
     @Id
     @GeneratedValue
     @Column(name = "language_id")
     private Long id;

     private String iso_639_1;

     private String name;

     private String englishName;

     @ManyToMany(mappedBy = "spokenLanguages")
     @JsonIgnore
     private List<MovieInfo> movieList = new ArrayList<>();
}
