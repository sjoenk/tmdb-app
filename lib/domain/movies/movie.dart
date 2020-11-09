import 'package:freezed_annotation/freezed_annotation.dart';

part 'movie.freezed.dart';

@freezed
abstract class Movie with _$Movie {
  const factory Movie({
    @required int id,
    @nullable String posterPath,
    @nullable String posterSmallPath,
    @nullable bool adult,
    @nullable String overview,
    @nullable DateTime releaseDate,
    @nullable List<int> genreIds,
    @nullable String originalTitle,
    @nullable String originalLanguage,
    @nullable String title,
    @nullable String backdropPath,
    @nullable String backdropSmallPath,
    @nullable double popularity,
    @nullable int voteCount,
    @nullable bool video,
    @nullable double voteAverage,
  }) = _Movie;
}
