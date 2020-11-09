import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../application/auth/auth_bloc.dart';
import '../../application/movie/movies_list/movies_list_bloc.dart';
import '../../injection.dart';
import '../routes/router.gr.dart';
import 'widgets/movie_grid.dart';
import 'widgets/search_field.dart';

class MovieListPage extends StatefulWidget {
  const MovieListPage({Key key}) : super(key: key);

  @override
  _MovieListPageState createState() => _MovieListPageState();
}

class _MovieListPageState extends State<MovieListPage> {
  final _scrollController = ScrollController();
  final _searchController = TextEditingController();
  final _scrollThreshold = 200.0;
  String lastSearchQuery = '';
  Timer _timer;
  MoviesListBloc _moviesListBloc;

  @override
  void initState() {
    _scrollController.addListener(_onScroll);
    _searchController.addListener(_onSearch);
    _moviesListBloc = getIt<MoviesListBloc>()..add(const MoviesListEvent.popularMovies(page: 1));
    super.initState();
  }

  @override
  void dispose() {
    _scrollController.removeListener(_onScroll);
    _searchController.removeListener(_onSearch);
    _scrollController.dispose();
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        BlocListener<AuthBloc, AuthState>(
          listener: (context, state) {
            // Listen to auth changes for redirecting when signing out
            state.maybeMap(
              unauthenticated: (_) => ExtendedNavigator.of(context).replace(Routes.signInPage),
              orElse: () {},
            );
          },
        ),
        BlocListener<MoviesListBloc, MoviesListState>(
          cubit: _moviesListBloc,
          listener: (context, state) {
            if (state.failure != null) {
              FlushbarHelper.createError(
                message: state.failure.map(
                  unexpected: (f) => f.message ?? 'Unexpected error',
                  unauthorized: (f) => f.message ?? 'Unauthorized',
                  notFound: (f) => f.message ?? 'Not found',
                  invalidRequest: (f) => f.message ?? 'Invalid request',
                ),
                duration: const Duration(seconds: 5),
              ).show(context);
            }
          },
        ),
      ],
      child: Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
              onPressed: () {
                context.read<AuthBloc>().add(const AuthEvent.signedOut());
              },
              icon: const Icon(Icons.logout),
            ),
          ],
          title: const Text('Movies'),
        ),
        body: BlocBuilder<MoviesListBloc, MoviesListState>(
          cubit: _moviesListBloc,
          builder: (context, state) {
            return Stack(
              children: [
                // Display the results when list of movies is not empty
                Positioned.fill(
                  child: MovieGrid(
                    scrollController: _scrollController,
                    movieList: state.movieList,
                  ),
                ),

                if (state.failure != null && state.movieList.movies.isEmpty)
                  Center(
                    child: Text(state.failure.message.toString()),
                  )
                else if (state.movieList.movies.isEmpty && !state.movieList.hasMoreResults)

                  // Show message when loading is done and if list of movies is empty
                  const Center(
                    child: Text("No movies found"),
                  ),

                // Postion the search box on top of the results
                Align(
                  alignment: Alignment.topCenter,
                  child: SearchField(searchController: _searchController),
                ),
              ],
            );
          },
        ),
      ),
    );
  }

  // Search handler. Called whenever text in searchfield changes
  void _onSearch() {
    final String searchQuery = _searchController.text;

    // Cancel the timer
    if (_timer != null) _timer.cancel();

    // Don't perform a search when entered text is equal to the last search query
    if (searchQuery == lastSearchQuery) return;

    // Set a timer to 500 ms and perform the search
    _timer = Timer(const Duration(milliseconds: 500), () {
      lastSearchQuery = searchQuery;

      // Scroll back to top because the results will change
      _scrollController.animateTo(
        0.0,
        curve: Curves.easeOut,
        duration: const Duration(milliseconds: 300),
      );

      if (searchQuery.isEmpty) {
        // When the search field is left empty, get the most popular movies
        _moviesListBloc.add(const MoviesListEvent.popularMovies(page: 1));
      } else {
        // Perform the search with the given search string
        _moviesListBloc.add(MoviesListEvent.searchMovies(page: 1, searchQuery: searchQuery));
      }
    });
  }

  // Scrollhandler to lazyload the next page with results
  void _onScroll() {
    final maxScroll = _scrollController.position.maxScrollExtent;
    final currentScroll = _scrollController.position.pixels;

    if (maxScroll - currentScroll <= _scrollThreshold && !_moviesListBloc.state.isLoading) {
      final int nextPage = _moviesListBloc.state.movieList.page + 1;
      final String searchQuery = _searchController.text;

      if (searchQuery.isEmpty) {
        // When the search field is left empty, get the next page of most popular movies
        _moviesListBloc.add(MoviesListEvent.popularMovies(page: nextPage));
      } else {
        // Get the next page of searched movies
        _moviesListBloc.add(MoviesListEvent.searchMovies(page: nextPage, searchQuery: searchQuery));
      }
    }
  }
}
