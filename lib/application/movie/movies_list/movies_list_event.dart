part of 'movies_list_bloc.dart';

@freezed
abstract class MoviesListEvent with _$MoviesListEvent {
  const factory MoviesListEvent.searchMovies({
    @required String searchQuery,
    @Default(0) int page,
  }) = _SearchMovies;
  const factory MoviesListEvent.popularMovies({
    @Default(0) int page,
  }) = _PopularMovies;
}
