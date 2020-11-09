import 'package:flutter/material.dart';

import '../../../domain/movies/movie_list.dart';
import 'bottom_loader.dart';
import 'movie_list_tile.dart';

class MovieGrid extends StatelessWidget {
  const MovieGrid({
    Key key,
    @required ScrollController scrollController,
    @required MovieList movieList,
  })  : _scrollController = scrollController,
        _movieList = movieList,
        super(key: key);

  final ScrollController _scrollController;
  final MovieList _movieList;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.only(top: 80, left: 5, right: 5),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: MediaQuery.of(context).orientation == Orientation.portrait ? 2 : 3,
        childAspectRatio: 1 / 1.5,
      ),
      itemBuilder: (BuildContext context, int index) {
        return _movieList.hasMoreResults && index >= _movieList.movies.length
            ? BottomLoader()
            : MovieListTile(
                movie: _movieList.movies[index],
              );
      },
      itemCount: _movieList.hasMoreResults ? _movieList.movies.length + 1 : _movieList.movies.length,
      controller: _scrollController,
    );
  }
}
