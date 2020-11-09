import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/movies/i_movie_repository.dart';
import '../../../domain/movies/movie.dart';
import '../../../domain/movies/movie_failure.dart';

part 'movie_details_bloc.freezed.dart';
part 'movie_details_event.dart';
part 'movie_details_state.dart';

@injectable
class MovieDetailsBloc extends Bloc<MovieDetailsEvent, MovieDetailsState> {
  final IMovieRepository _movieRepository;

  MovieDetailsBloc(this._movieRepository) : super(const _Loading());

  @override
  Stream<MovieDetailsState> mapEventToState(
    MovieDetailsEvent event,
  ) async* {
    yield* event.map(load: (e) async* {
      // Yield loading state to show loading indicator
      yield const MovieDetailsState.loading();

      // Get the details
      final optionalFailure = await _movieRepository.getDetails(movieId: e.movieId);

      // Yield the loaded movie or a failure
      yield optionalFailure.fold(
        (failure) => MovieDetailsState.failure(failure: failure),
        (movie) => MovieDetailsState.loaded(movie: movie),
      );
    });
  }
}
