CREATE DATABASE IF NOT EXISTS `ecomap_corpi`;
use `ecomap_corpi`;

SET FOREIGN_KEY_CHECKS = 0;
DROP TABLE IF EXISTS `movie_info`;
DROP TABLE IF EXISTS `collection`;
DROP TABLE IF EXISTS `genre`;
DROP TABLE IF EXISTS `movie_genre`;
DROP TABLE IF EXISTS `production_company`;
DROP TABLE IF EXISTS `production_country`;
DROP TABLE IF EXISTS `language`;
DROP TABLE IF EXISTS `origin_country`;
DROP TABLE IF EXISTS `country`;
DROP TABLE IF EXISTS `movie_language`;
DROP TABLE IF EXISTS `movie_production_company`;
SET FOREIGN_KEY_CHECKS = 1;

CREATE TABLE `movie_info` (
	`movie_id`	bigint(20)	NOT NULL,
	`title`	varchar(255)	NOT NULL,
	`original_title`	varchar(255)	NULL,
	`overview`	text	NULL,
	`release_date`	date	NULL,
	`runtime`	int	NULL,
	`status`	varchar(50)	NULL,
	`budget`	bigint(20)	NULL,
	`revenue`	bigint(20)	NULL,
	`vote_average`	decimal(3,2)	NULL,
	`vote_count`	int	NULL,
	`popularity`	decimal(5,2)	NULL,
	`tagline`	varchar(255)	NULL,
	`homepage`	varchar(255)	NULL,
	`poster_path`	varchar(255)	NULL,
	`backdrop_path`	varchar(255)	NULL,
	`adult`	boolean	NULL,
	`video`	boolean	NULL,
	`imdb_id`	varchar(15)	NULL,
	`collection_id`	bigint(20)	NULL,
	`language_id`	bigint(20)	NOT NULL
);

CREATE TABLE `collection` (
	`collection_id`	bigint(20)	NOT NULL,
	`name`	varchar(255)	NOT NULL,
	`poster_path`	varchar(255)	NULL,
	`backdrop_path`	varchar(255)	NULL
);

CREATE TABLE `genre` (
	`genre_id`	bigint(20)	NOT NULL,
	`name`	varchar(255)	NOT NULL
);

CREATE TABLE `movie_genre` (
	`movie_id`	bigint(20)	NOT NULL,
	`genre_id`	bigint(20)	NOT NULL
);

CREATE TABLE `production_company` (
	`production_company_id`	bigint(20)	NOT NULL,
	`name`	varchar(255)	NOT NULL,
	`logo_path`	varchar(255)	NULL,
	`country_id`	bigint(20)	NOT NULL
);

CREATE TABLE `production_country` (
	`movie_id`	bigint(20)	NOT NULL,
	`country_id`	bigint(20)	NOT NULL
);

CREATE TABLE `language` (
	`language_id`	bigint(20)	NOT NULL,
	`iso_639_1`	varchar(5)	NOT NULL,
	`name`	varchar(255)	NULL,
	`english_name`	varchar(255)	NULL
);

CREATE TABLE `origin_country` (
	`movie_id`	bigint(20)	NOT NULL,
	`country_id`	bigint(20)	NOT NULL
);

CREATE TABLE `country` (
	`country_id`	bigint(20)	NOT NULL,
	`iso_3166_1`	varchar(2)	NOT NULL,
	`name`	varchar(255)	NOT NULL
);

CREATE TABLE `movie_language` (
	`movie_id`	bigint(20)	NOT NULL,
	`language_id`	bigint(20)	NOT NULL
);

CREATE TABLE `movie_production_company` (
	`production_company_id`	bigint(20)	NOT NULL,
	`movie_id`	bigint(20)	NOT NULL
);

ALTER TABLE `movie_info` ADD CONSTRAINT `PK_MOVIE_INFO` PRIMARY KEY (
	`movie_id`
);

ALTER TABLE `collection` ADD CONSTRAINT `PK_COLLECTION` PRIMARY KEY (
	`collection_id`
);

ALTER TABLE `genre` ADD CONSTRAINT `PK_GENRE` PRIMARY KEY (
	`genre_id`
);

ALTER TABLE `movie_genre` ADD CONSTRAINT `PK_MOVIE_GENRE` PRIMARY KEY (
	`movie_id`,
	`genre_id`
);

ALTER TABLE `production_company` ADD CONSTRAINT `PK_PRODUCTION_COMPANY` PRIMARY KEY (
	`production_company_id`
);

ALTER TABLE `production_country` ADD CONSTRAINT `PK_PRODUCTION_COUNTRY` PRIMARY KEY (
	`movie_id`,
	`country_id`
);

ALTER TABLE `language` ADD CONSTRAINT `PK_LANGUAGE` PRIMARY KEY (
	`language_id`
);

ALTER TABLE `origin_country` ADD CONSTRAINT `PK_ORIGIN_COUNTRY` PRIMARY KEY (
	`movie_id`,
	`country_id`
);

ALTER TABLE `country` ADD CONSTRAINT `PK_COUNTRY` PRIMARY KEY (
	`country_id`
);

ALTER TABLE `movie_language` ADD CONSTRAINT `PK_MOVIE_LANGUAGE` PRIMARY KEY (
	`movie_id`,
	`language_id`
);

ALTER TABLE `movie_production_company` ADD CONSTRAINT `PK_MOVIE_PRODUCTION_COMPANY` PRIMARY KEY (
	`production_company_id`,
	`movie_id`
);

ALTER TABLE `movie_info` ADD CONSTRAINT `FK_collection_TO_movie_info_1` FOREIGN KEY (
	`collection_id`
)
REFERENCES `collection` (
	`collection_id`
);

ALTER TABLE `movie_info` ADD CONSTRAINT `FK_language_TO_movie_info_1` FOREIGN KEY (
	`language_id`
)
REFERENCES `language` (
	`language_id`
);

ALTER TABLE `movie_genre` ADD CONSTRAINT `FK_movie_info_TO_movie_genre_1` FOREIGN KEY (
	`movie_id`
)
REFERENCES `movie_info` (
	`movie_id`
);

ALTER TABLE `movie_genre` ADD CONSTRAINT `FK_genre_TO_movie_genre_1` FOREIGN KEY (
	`genre_id`
)
REFERENCES `genre` (
	`genre_id`
);

ALTER TABLE `production_company` ADD CONSTRAINT `FK_country_TO_production_company_1` FOREIGN KEY (
	`country_id`
)
REFERENCES `country` (
	`country_id`
);

ALTER TABLE `production_country` ADD CONSTRAINT `FK_movie_info_TO_production_country_1` FOREIGN KEY (
	`movie_id`
)
REFERENCES `movie_info` (
	`movie_id`
);

ALTER TABLE `production_country` ADD CONSTRAINT `FK_country_TO_production_country_1` FOREIGN KEY (
	`country_id`
)
REFERENCES `country` (
	`country_id`
);

ALTER TABLE `origin_country` ADD CONSTRAINT `FK_movie_info_TO_origin_country_1` FOREIGN KEY (
	`movie_id`
)
REFERENCES `movie_info` (
	`movie_id`
);

ALTER TABLE `origin_country` ADD CONSTRAINT `FK_country_TO_origin_country_1` FOREIGN KEY (
	`country_id`
)
REFERENCES `country` (
	`country_id`
);

ALTER TABLE `movie_language` ADD CONSTRAINT `FK_movie_info_TO_movie_language_1` FOREIGN KEY (
	`movie_id`
)
REFERENCES `movie_info` (
	`movie_id`
);

ALTER TABLE `movie_language` ADD CONSTRAINT `FK_language_TO_movie_language_1` FOREIGN KEY (
	`language_id`
)
REFERENCES `language` (
	`language_id`
);

ALTER TABLE `movie_production_company` ADD CONSTRAINT `FK_production_company_TO_movie_production_company_1` FOREIGN KEY (
	`production_company_id`
)
REFERENCES `production_company` (
	`production_company_id`
);

ALTER TABLE `movie_production_company` ADD CONSTRAINT `FK_movie_info_TO_movie_production_company_1` FOREIGN KEY (
	`movie_id`
)
REFERENCES `movie_info` (
	`movie_id`
);
