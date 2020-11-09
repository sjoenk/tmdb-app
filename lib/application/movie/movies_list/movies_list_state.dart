part of 'movies_list_bloc.dart';

@freezed
abstract class MoviesListState with _$MoviesListState {
  const factory MoviesListState({
    @Default(MovieList()) MovieList movieList,
    @Default(false) bool isLoading,
    @nullable MovieFailure failure,
  }) = _MoviesListState;

  factory MoviesListState.initial() => const MoviesListState();
}
