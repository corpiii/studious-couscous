package green.ecomap.tmdb_clone_coding.movie.error;

public class MovieException extends Exception {
    private final MovieError movieError;

    public MovieException(MovieError error) {
        super(error.getMessage());
        movieError = error;
    }

    public String getMessage() {
        return movieError.getMessage();
    }
}
