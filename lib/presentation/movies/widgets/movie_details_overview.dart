import 'package:flutter/material.dart';

import '../../../domain/movies/movie.dart';
import 'rating_stars.dart';

class MovieDetailsOverview extends StatelessWidget {
  const MovieDetailsOverview({
    Key key,
    @required Movie movie,
  })  : _movie = movie,
        super(key: key);

  final Movie _movie;

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.all(15.0),
      sliver: SliverToBoxAdapter(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: 8.0),
            Text(
              _movie.title,
              style: Theme.of(context).textTheme.headline4,
            ),
            const SizedBox(height: 8.0),
            RatingStars(
              reviewsReceivedAverageRating: _movie.voteAverage,
            ),
            const SizedBox(height: 15.0),
            Text(
              _movie.overview,
              style: const TextStyle(
                fontSize: 15.0,
                height: 1.5,
              ),
            ),
            const SizedBox(height: 15.0),
            if (_movie.posterPath != null)
              Container(
                margin: const EdgeInsets.all(25),
                decoration: const BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      spreadRadius: 5,
                      blurRadius: 15,
                      offset: Offset(3, 5), // changes position of shadow
                    ),
                  ],
                ),
                child: Image.network(_movie.posterPath),
              ),
            const SizedBox(height: 15.0),
          ],
        ),
      ),
    );
  }
}
