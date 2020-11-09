import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:mockito/mockito.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:tmdb_app/application/movie/movies_list/movies_list_bloc.dart';
import 'package:tmdb_app/domain/movies/movie.dart';
import 'package:tmdb_app/domain/movies/movie_failure.dart';
import 'package:tmdb_app/domain/movies/movie_list.dart';
import 'package:tmdb_app/infrastructure/movies/movie_repository.dart';

class MockMovieRepository extends Mock implements MovieRepository {}

void main() {
  MockMovieRepository mockMovieRepository;

  setUp(() {
    mockMovieRepository = MockMovieRepository();
  });

  group('GetPopularMovieList', () {
    const movie1 = Movie(id: 1, title: "First movie");
    const movie2 = Movie(id: 2, title: "Second movie");
    const movieList1 = MovieList(movies: [movie1], page: 1, totalPages: 2, hasMoreResults: true, totalResults: 2);
    const movieList2 = MovieList(movies: [movie2], page: 2, totalPages: 2, hasMoreResults: false, totalResults: 2);
    const movieListCombined = MovieList(
      movies: [movie1, movie2],
      page: 2,
      totalPages: 2,
      hasMoreResults: false,
      totalResults: 2,
    );
    const movieFailure = MovieFailure.unexpected(message: 'Failure message');

    blocTest(
      'emits [MoviesListState(movieList: movieList1)] when successful first page load',
      build: () {
        when(mockMovieRepository.popularMovies(page: 1)).thenAnswer((_) async => right(movieList1));
        return MoviesListBloc(mockMovieRepository);
      },
      act: (bloc) => bloc.add(const MoviesListEvent.popularMovies(page: 1)),
      expect: [
        const MoviesListState(isLoading: true),
        const MoviesListState(movieList: movieList1, isLoading: false),
      ],
    );

    blocTest(
      'emits combined movieLists when successful on first and second page load',
      build: () {
        when(mockMovieRepository.popularMovies(page: 1)).thenAnswer((_) async => right(movieList1));
        when(mockMovieRepository.popularMovies(page: 2)).thenAnswer((_) async => right(movieList2));
        return MoviesListBloc(mockMovieRepository);
      },
      act: (bloc) {
        bloc.add(const MoviesListEvent.popularMovies(page: 1));
        bloc.add(const MoviesListEvent.popularMovies(page: 2));
      },
      expect: [
        const MoviesListState(isLoading: true),
        const MoviesListState(movieList: movieList1, isLoading: false),
        const MoviesListState(movieList: movieList1, isLoading: true),
        const MoviesListState(movieList: movieListCombined, isLoading: false),
      ],
    );

    blocTest(
      'emits failure when unsuccessful first page',
      build: () {
        when(mockMovieRepository.popularMovies(page: anyNamed('page'))).thenAnswer((_) async => left(movieFailure));
        return MoviesListBloc(mockMovieRepository);
      },
      act: (bloc) => bloc.add(const MoviesListEvent.popularMovies(page: 1)),
      expect: [
        const MoviesListState(isLoading: true),
        const MoviesListState(isLoading: false, failure: movieFailure),
      ],
    );

    blocTest(
      'emits failure when unsuccessful second page',
      build: () {
        when(mockMovieRepository.popularMovies(page: 1)).thenAnswer((_) async => right(movieList1));
        when(mockMovieRepository.popularMovies(page: 2)).thenAnswer((_) async => left(movieFailure));
        return MoviesListBloc(mockMovieRepository);
      },
      act: (bloc) {
        bloc.add(const MoviesListEvent.popularMovies(page: 1));
        bloc.add(const MoviesListEvent.popularMovies(page: 2));
      },
      expect: [
        const MoviesListState(isLoading: true),
        const MoviesListState(movieList: movieList1, isLoading: false),
        const MoviesListState(movieList: movieList1, isLoading: true),
        const MoviesListState(movieList: movieList1, isLoading: false, failure: movieFailure),
      ],
    );
  });
}
