import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:mockito/mockito.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:tmdb_app/application/movie/details/movie_details_bloc.dart';
import 'package:tmdb_app/domain/movies/movie.dart';
import 'package:tmdb_app/domain/movies/movie_failure.dart';
import 'package:tmdb_app/infrastructure/movies/movie_repository.dart';

class MockMovieRepository extends Mock implements MovieRepository {}

void main() {
  MockMovieRepository mockMovieRepository;

  setUp(() {
    mockMovieRepository = MockMovieRepository();
  });

  group('GetMovieDetails', () {
    const movie = Movie(id: 1, title: 'Test Movie');
    const failure = MovieFailure.unexpected(message: 'Failure message');

    blocTest(
      'emits [MovieDetailsState.loading, MovieDetailsState.loaded] when successful',
      build: () {
        when(mockMovieRepository.getDetails(movieId: anyNamed('movieId'))).thenAnswer((_) async => right(movie));
        return MovieDetailsBloc(mockMovieRepository);
      },
      act: (bloc) => bloc.add(const MovieDetailsEvent.load(movieId: 1)),
      expect: [
        const MovieDetailsState.loading(),
        const MovieDetailsState.loaded(movie: movie),
      ],
    );

    blocTest(
      'emits [MovieDetailsState.loading, MovieDetailsState.failure] when unsuccessful',
      build: () {
        when(mockMovieRepository.getDetails(movieId: anyNamed('movieId'))).thenAnswer(
          (_) async => left(failure),
        );

        return MovieDetailsBloc(mockMovieRepository);
      },
      act: (bloc) => bloc.add(const MovieDetailsEvent.load(movieId: 1)),
      expect: [
        const MovieDetailsState.loading(),
        const MovieDetailsState.failure(failure: failure),
      ],
    );
  });
}
