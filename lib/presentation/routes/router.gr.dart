// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../movies/movie_details_page.dart';
import '../movies/movie_list_page.dart';
import '../sign_in/sign_in.dart';
import '../splash/splash_page.dart';

class Routes {
  static const String splashPage = '/';
  static const String movieListPage = '/movie-list-page';
  static const String movieDetailsPage = '/movie-details-page';
  static const String signInPage = '/sign-in-page';
  static const all = <String>{
    splashPage,
    movieListPage,
    movieDetailsPage,
    signInPage,
  };
}

class Router extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.splashPage, page: SplashPage),
    RouteDef(Routes.movieListPage, page: MovieListPage),
    RouteDef(Routes.movieDetailsPage, page: MovieDetailsPage),
    RouteDef(Routes.signInPage, page: SignInPage),
  ];
  @override
  Map<Type, AutoRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, AutoRouteFactory>{
    SplashPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const SplashPage(),
        settings: data,
      );
    },
    MovieListPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const MovieListPage(),
        settings: data,
      );
    },
    MovieDetailsPage: (data) {
      final args = data.getArgs<MovieDetailsPageArguments>(nullOk: false);
      return MaterialPageRoute<dynamic>(
        builder: (context) => MovieDetailsPage(
          key: args.key,
          movieId: args.movieId,
        ),
        settings: data,
      );
    },
    SignInPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const SignInPage(),
        settings: data,
      );
    },
  };
}

/// ************************************************************************
/// Navigation helper methods extension
/// *************************************************************************

extension RouterExtendedNavigatorStateX on ExtendedNavigatorState {
  Future<dynamic> pushSplashPage() => push<dynamic>(Routes.splashPage);

  Future<dynamic> pushMovieListPage() => push<dynamic>(Routes.movieListPage);

  Future<dynamic> pushMovieDetailsPage({
    Key key,
    @required int movieId,
  }) =>
      push<dynamic>(
        Routes.movieDetailsPage,
        arguments: MovieDetailsPageArguments(key: key, movieId: movieId),
      );

  Future<dynamic> pushSignInPage() => push<dynamic>(Routes.signInPage);
}

/// ************************************************************************
/// Arguments holder classes
/// *************************************************************************

/// MovieDetailsPage arguments holder class
class MovieDetailsPageArguments {
  final Key key;
  final int movieId;
  MovieDetailsPageArguments({this.key, @required this.movieId});
}
