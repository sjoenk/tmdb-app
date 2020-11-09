import 'package:freezed_annotation/freezed_annotation.dart';

part 'movie_exception.freezed.dart';

@freezed
abstract class MovieException with _$MovieException {
  factory MovieException.notFound([@Default("Not found") String message]) = MovieNotFoundException;
  factory MovieException.unauthorized([@Default("Unauthorized") String message]) = MovieUnautharizedException;
  factory MovieException.invalidRequest([@Default("Invalid request") String message]) = MovieInvalidRequestException;
}
