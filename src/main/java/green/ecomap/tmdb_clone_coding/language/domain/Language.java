package green.ecomap.tmdb_clone_coding.language.domain;

import lombok.Data;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

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
}
