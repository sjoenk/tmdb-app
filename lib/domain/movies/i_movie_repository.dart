import 'package:dartz/dartz.dart';

import 'movie.dart';
import 'movie_failure.dart';
import 'movie_list.dart';

abstract class IMovieRepository {
  Future<Either<MovieFailure, Movie>> getDetails({int movieId});
  Future<Either<MovieFailure, MovieList>> searchMovies({String searchQuery, int page});
  Future<Either<MovieFailure, MovieList>> popularMovies({int page});
}
