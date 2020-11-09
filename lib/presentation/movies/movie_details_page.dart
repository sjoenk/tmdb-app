import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tmdb_app/domain/movies/movie.dart';

import '../../application/movie/details/movie_details_bloc.dart';
import '../../injection.dart';
import 'widgets/movie_banner.dart';
import 'widgets/movie_details_overview.dart';

class MovieDetailsPage extends StatelessWidget {
  final int movieId;
  const MovieDetailsPage({Key key, @required this.movieId}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<MovieDetailsBloc, MovieDetailsState>(
        cubit: getIt.get<MovieDetailsBloc>()..add(MovieDetailsEvent.load(movieId: movieId)),
        builder: (context, state) {
          return state.map(
            loading: (_) => _buildPage(
              body: const SliverFillRemaining(
                child: Center(
                  child: CircularProgressIndicator(),
                ),
              ),
            ),
            failure: (failure) => _buildPage(
              body: SliverFillRemaining(
                child: Center(
                  child: Text(failure.failure.message.toString()),
                ),
              ),
            ),
            loaded: (state) => _buildPage(
              movie: state.movie,
              body: MovieDetailsOverview(movie: state.movie),
            ),
          );
        },
      ),
    );
  }

  Widget _buildPage({Movie movie, Widget body}) {
    return CustomScrollView(
      slivers: [
        MovieBanner(movie: movie),
        body,
      ],
    );
  }
}
