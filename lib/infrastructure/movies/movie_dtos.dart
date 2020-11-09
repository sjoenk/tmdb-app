import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/movies/movie.dart';
import '../core/imdb_helper.dart';

part 'movie_dtos.freezed.dart';
part 'movie_dtos.g.dart';

@freezed
abstract class MovieDto implements _$MovieDto {
  const factory MovieDto({
    @required int id,
    @JsonKey(name: 'poster_path') String posterPath,
    @JsonKey(name: 'adult') bool adult,
    @JsonKey(name: 'overview') String overview,
    @JsonKey(name: 'release_date', fromJson: MovieDto.jsonToDateTime) DateTime releaseDate,
    @JsonKey(name: 'genre_ids') List<int> genreIds,
    @JsonKey(name: 'original_title') String originalTitle,
    @JsonKey(name: 'original_language') String originalLanguage,
    @JsonKey(name: 'title') String title,
    @JsonKey(name: 'backdrop_path') String backdropPath,
    @JsonKey(name: 'popularity') double popularity,
    @JsonKey(name: 'vote_count') int voteCount,
    @JsonKey(name: 'video') bool video,
    @JsonKey(name: 'vote_average') double voteAverage,
  }) = _MovieDto;

  const MovieDto._();

  Movie toDomain() {
    return Movie(
      id: id,
      posterPath: ImdbHelper.getPosterPath(posterPath, PosterSizes.original),
      posterSmallPath: ImdbHelper.getPosterPath(posterPath, PosterSizes.w342),
      adult: adult,
      overview: overview,
      releaseDate: releaseDate,
      genreIds: genreIds,
      originalTitle: originalTitle,
      originalLanguage: originalLanguage,
      title: title,
      backdropPath: ImdbHelper.getBackdropPath(backdropPath, BackdropSizes.original),
      backdropSmallPath: ImdbHelper.getBackdropPath(backdropPath, BackdropSizes.w780),
      popularity: popularity,
      voteCount: voteCount,
      video: video,
      voteAverage: voteAverage,
    );
  }

  factory MovieDto.fromJson(Map<String, dynamic> json) => _$MovieDtoFromJson(json);

  static DateTime jsonToDateTime(String json) => DateTime.tryParse(json ?? '');
}

@freezed
abstract class MovieListDto with _$MovieListDto {
  const factory MovieListDto({
    @required int page,
    @required int totalPages,
    @required int totalResults,
    @required List<Movie> movies,
  }) = _MovieListDto;
}
