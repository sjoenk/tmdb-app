import 'package:flutter/material.dart';

import '../../../domain/movies/movie.dart';

class MovieBanner extends StatelessWidget {
  const MovieBanner({
    Key key,
    Movie movie,
  })  : _movie = movie,
        super(key: key);

  final Movie _movie;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      expandedHeight: 260,
      collapsedHeight: 90,
      floating: true,
      pinned: true,
      snap: true,
      elevation: 15,
      forceElevated: true,
      shadowColor: Colors.black,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          bottom: Radius.elliptical(150, 50),
        ),
      ),
      flexibleSpace: ClipRRect(
        borderRadius: const BorderRadius.vertical(
          bottom: Radius.elliptical(150, 50),
        ),
        child: Stack(
          children: <Widget>[
            Positioned.fill(
              child: _movie?.backdropPath != null
                  ? Image.network(
                      _movie.backdropPath,
                      fit: BoxFit.cover,
                    )
                  : Container(
                      color: Theme.of(context).primaryColor,
                    ),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Column(
                children: [
                  Container(
                    height: MediaQuery.of(context).padding.top,
                    color: Colors.black.withOpacity(.7),
                  ),
                  Container(
                    height: 90,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Colors.black.withOpacity(.7),
                          Colors.transparent,
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
