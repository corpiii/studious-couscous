package green.ecomap.tmdb_clone_coding.movie.dto;

import green.ecomap.tmdb_clone_coding.company.dto.CompanyDTO;
import green.ecomap.tmdb_clone_coding.country.domain.Country;
import green.ecomap.tmdb_clone_coding.genre.dto.GenreDTO;
import green.ecomap.tmdb_clone_coding.movie.domain.MovieInfo;
import green.ecomap.tmdb_clone_coding.movie_collection.dto.MovieCollectionDTO;
import lombok.AllArgsConstructor;
import lombok.Data;

import java.time.LocalDate;
import java.util.List;
import java.util.stream.Collectors;

@Data
@AllArgsConstructor
public class MovieDTO {
    private Long id;
    private MovieCollectionDTO belongsToCollection;
    private String title;
    private String originalTitle;
    private String overview;
    private LocalDate releaseDate;
    private Long runtime;
    private String status;
    private Long budget;
    private Long revenue;
    private Double voteAverage;
    private Long voteCount;
    private Double popularity;
    private String tagline;
    private String homepage;
    private String posterPath;
    private String backdropPath;
    private Boolean adult;
    private Boolean video;
    private String imdbId;
    private String originalLanguage;

    private List<GenreDTO> genres;
    private List<String> originCountry;
    private List<CountrySummaryDTO> productionCountries;
    private List<CompanyDTO> productionCompanies;
    private List<SpokenLanguage> spokenLanguages;

    public static MovieDTO from(MovieInfo movieInfo) {
        MovieCollectionDTO belongsToCollection = MovieCollectionDTO.from(movieInfo.getBelongsToCollection());
        List<GenreDTO> genres = movieInfo.getGenres().stream()
                .map(GenreDTO::from).collect(Collectors.toList());
        List<String> originCountry = movieInfo.getOriginCountry().stream().map(Country::getIso_3166_1).collect(Collectors.toList());
        List<CountrySummaryDTO> productionCountries = movieInfo.getProductionCountries().stream().map(CountrySummaryDTO::from).collect(Collectors.toList());
        List<CompanyDTO> productionCompanies = movieInfo.getProductionCompanies().stream().map(CompanyDTO::from).collect(Collectors.toList());
        List<SpokenLanguage> spokenLanguages = movieInfo.getSpokenLanguages().stream().map(SpokenLanguage::from).collect(Collectors.toList());

        return new MovieDTO(
                movieInfo.getId(),
                belongsToCollection,
                movieInfo.getTitle(),
                movieInfo.getOriginalTitle(),
                movieInfo.getOriginalTitle(),
                movieInfo.getReleaseDate(),
                movieInfo.getRuntime(),
                movieInfo.getStatus(),
                movieInfo.getBudget(),
                movieInfo.getRevenue(),
                movieInfo.getVoteAverage(),
                movieInfo.getVoteCount(),
                movieInfo.getPopularity(),
                movieInfo.getTagline(),
                movieInfo.getHomepage(),
                movieInfo.getPosterPath(),
                movieInfo.getBackdropPath(),
                movieInfo.getAdult(),
                movieInfo.getVideo(),
                movieInfo.getImdbId(),
                movieInfo.getOriginalLanguage().getIso_639_1(),
                genres,
                originCountry,
                productionCountries,
                productionCompanies,
                spokenLanguages
        );
    }
}

