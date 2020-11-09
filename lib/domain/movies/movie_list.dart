import 'package:freezed_annotation/freezed_annotation.dart';

import 'movie.dart';

part 'movie_list.freezed.dart';

@freezed
abstract class MovieList with _$MovieList {
  const factory MovieList({
    @Default(0) int page,
    @Default(0) int totalPages,
    @Default(0) int totalResults,
    @Default([]) List<Movie> movies,
    @Default(false) bool hasMoreResults,
  }) = _MovieList;
}
