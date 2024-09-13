package green.ecomap.tmdb_clone_coding.movie.error;

import lombok.Getter;

public enum MovieError {
    NOT_FOUND_MOVIE("해당하는 영화가 존재하지 않습니다.");

    @Getter
    private final String message;

    MovieError(String message) {
        this.message = message;
    }
}
