import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:deep_pick/deep_pick.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';

import '../../domain/movies/i_movie_repository.dart';
import '../../domain/movies/movie.dart';
import '../../domain/movies/movie_failure.dart';
import '../../domain/movies/movie_list.dart';
import '../core/imdb_config.dart';
import 'movie_dtos.dart';
import 'movie_exception.dart';

@LazySingleton(as: IMovieRepository)
class MovieRepository implements IMovieRepository {
  /// Get the details of a given movie.
  /// Returns left([MovieFailure]) on error.
  @override
  Future<Either<MovieFailure, Movie>> getDetails({int movieId}) async {
    try {
      final String response = await _makeApiCall('/movie/$movieId');
      final json = jsonDecode(response);
      final Map<String, dynamic> map = pick(json).asMapOrNull<String, dynamic>();
      final movieDto = MovieDto.fromJson(map);
      return right(movieDto.toDomain());
    } on MovieUnautharizedException catch (e) {
      return left(MovieFailure.unauthorized(message: e.message));
    } on MovieNotFoundException catch (e) {
      return left(MovieFailure.notFound(message: e.message));
    } on MovieInvalidRequestException catch (e) {
      return left(MovieFailure.invalidRequest(message: e.message));
    } catch (e) {
      return left(MovieFailure.unexpected(message: e.message.toString()));
    }
  }

  /// Get a paginated list [MovieList] of the most popular movies
  /// Returns left([MovieFailure]) on error.
  @override
  Future<Either<MovieFailure, MovieList>> popularMovies({int page}) async {
    try {
      final String response = await _makeApiCall('/movie/popular', {'page': page.toString()});
      final json = jsonDecode(response);

      final results = pick(json, 'results').asListOrEmpty<Map<String, dynamic>>();
      final currentPage = pick(json, 'page').asIntOrNull();
      final totalResults = pick(json, 'total_results').asIntOrNull();
      final totalPages = pick(json, 'total_pages').asIntOrNull();

      final List<Movie> movies = results.map((movie) {
        return MovieDto.fromJson(movie).toDomain();
      }).toList();

      return right(MovieList(
        movies: movies,
        page: currentPage,
        totalPages: totalPages,
        totalResults: totalResults,
        hasMoreResults: currentPage < totalPages,
      ));
    } on MovieUnautharizedException catch (e) {
      return left(MovieFailure.unauthorized(message: e.message));
    } on MovieNotFoundException catch (e) {
      return left(MovieFailure.notFound(message: e.message));
    } on MovieInvalidRequestException catch (e) {
      return left(MovieFailure.invalidRequest(message: e.message));
    } catch (e) {
      return left(MovieFailure.unexpected(message: e.message.toString()));
    }
  }

  /// Get a paginated list [MovieList] of searched movies by the given [searchQuery]
  /// Returns left([MovieFailure]) on error.
  @override
  Future<Either<MovieFailure, MovieList>> searchMovies({String searchQuery, int page}) async {
    try {
      final String response = await _makeApiCall('/search/movie', {
        'page': page.toString(),
        'query': searchQuery,
      });
      final json = jsonDecode(response);

      final results = pick(json, 'results').asListOrEmpty<Map<String, dynamic>>();
      final currentPage = pick(json, 'page').asIntOrNull();
      final totalResults = pick(json, 'total_results').asIntOrNull();
      final totalPages = pick(json, 'total_pages').asIntOrNull();

      final List<Movie> movies = results.map((movie) {
        return MovieDto.fromJson(movie).toDomain();
      }).toList();

      return right(MovieList(
        movies: movies,
        page: currentPage,
        totalPages: totalPages,
        totalResults: totalResults,
        hasMoreResults: currentPage < totalPages,
      ));
    } on MovieUnautharizedException catch (e) {
      return left(MovieFailure.unauthorized(message: e.message));
    } on MovieNotFoundException catch (e) {
      return left(MovieFailure.notFound(message: e.message));
    } on MovieInvalidRequestException catch (e) {
      return left(MovieFailure.invalidRequest(message: e.message));
    } catch (e) {
      return left(MovieFailure.unexpected(message: e.message.toString()));
    }
  }

  /// Helper function to make the API call
  Future<String> _makeApiCall(String path, [Map<String, String> params = const {}]) async {
    // TODO: make use of a http package like Dio
    final queryParameters = {
      ...params,
      ...{'api_key': DotEnv().env['TMDB_API_KEY']}
    };

    final Uri uri = Uri.https(ImdbConfig.apiBase, '/${ImdbConfig.apiVersion}$path', queryParameters);

    final response = await http.get(uri);

    if (response.statusCode == 200) {
      return response.body;
    } else if (response.statusCode == 401) {
      final statusMessage = pick(jsonDecode(response.body), 'status_message').asStringOrNull();
      throw MovieException.unauthorized(statusMessage ?? "Unauthorized");
    } else if (response.statusCode == 404) {
      final statusMessage = pick(jsonDecode(response.body), 'status_message').asStringOrNull();
      throw MovieException.notFound(statusMessage ?? "Not found");
    } else if (response.statusCode == 422) {
      throw MovieException.invalidRequest();
    } else {
      throw Exception('Failed to call API');
    }
  }
}
