import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/movies/i_movie_repository.dart';
import '../../../domain/movies/movie_failure.dart';
import '../../../domain/movies/movie_list.dart';

part 'movies_list_bloc.freezed.dart';
part 'movies_list_event.dart';
part 'movies_list_state.dart';

@injectable
class MoviesListBloc extends Bloc<MoviesListEvent, MoviesListState> {
  final IMovieRepository _movieRepository;
  MoviesListBloc(this._movieRepository) : super(MoviesListState.initial());

  @override
  Stream<MoviesListState> mapEventToState(
    MoviesListEvent event,
  ) async* {
    yield* event.map(
      searchMovies: (e) async* {
        // Yield same state but with isLoading is true
        yield state.copyWith(isLoading: true);

        // Search for the movies
        final optionalFailure = await _movieRepository.searchMovies(
          searchQuery: e.searchQuery,
          page: e.page,
        );

        // Check for failure
        yield optionalFailure.fold(
          (failure) => state.copyWith(failure: failure, isLoading: false),
          (movieList) => newList(movieList: movieList, page: e.page),
        );
      },
      popularMovies: (e) async* {
        // Yield same state but with isLoading is true
        yield state.copyWith(isLoading: true);

        // Search for the movies
        final optionalFailure = await _movieRepository.popularMovies(
          page: e.page,
        );

        // Check for failure
        yield optionalFailure.fold(
          (failure) => state.copyWith(failure: failure, isLoading: false),
          (movieList) => newList(movieList: movieList, page: e.page),
        );
      },
    );
  }

  MoviesListState newList({MovieList movieList, int page = 0}) {
    if (page > 1) {
      // When loading additinal pages, combine results with the excisting list
      final combinedMovieList = movieList.copyWith(
        movies: [...state.movieList.movies, ...movieList.movies],
      );
      return state.copyWith(movieList: combinedMovieList, isLoading: false);
    } else {
      // Else return the state with only the new movie list
      return state.copyWith(movieList: movieList, isLoading: false);
    }
  }
}
