import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../domain/movies/movie.dart';
import '../../routes/router.gr.dart';

class MovieListTile extends StatelessWidget {
  const MovieListTile({
    Key key,
    this.movie,
  }) : super(key: key);

  final Movie movie;
  double get _borderRadius => 8.0;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        ExtendedNavigator.of(context).push(
          Routes.movieDetailsPage,
          arguments: MovieDetailsPageArguments(movieId: movie.id),
        );
      },
      child: Container(
        margin: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Theme.of(context).primaryColor,
          image: movie.posterSmallPath != null
              ? DecorationImage(
                  image: Image.network(movie.posterSmallPath).image,
                  fit: BoxFit.cover,
                )
              : null,
          borderRadius: BorderRadius.circular(_borderRadius),
          boxShadow: const [
            BoxShadow(
              spreadRadius: 5,
              blurRadius: 15,
              offset: Offset(3, 5), // changes position of shadow
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(_borderRadius),
          child: Column(
            children: [
              Expanded(
                child: movie.posterSmallPath == null
                    ? const Center(
                        child: Icon(
                          Icons.image_not_supported,
                          color: Colors.teal,
                        ),
                      )
                    : Container(),
              ),
              Container(
                alignment: Alignment.bottomCenter,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    colors: [
                      Colors.black,
                      Colors.black87,
                      Colors.transparent,
                    ],
                  ),
                ),
                padding: const EdgeInsets.only(bottom: 10, top: 30),
                child: Text(
                  movie.title,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
