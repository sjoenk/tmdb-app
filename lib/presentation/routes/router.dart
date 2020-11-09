import 'package:auto_route/auto_route_annotations.dart';
import 'package:tmdb_app/presentation/movies/movie_details_page.dart';
import 'package:tmdb_app/presentation/movies/movie_list_page.dart';
import 'package:tmdb_app/presentation/splash/splash_page.dart';

import '../sign_in/sign_in.dart';

@MaterialAutoRouter(
  generateNavigationHelperExtension: true,
  routes: <AutoRoute>[
    MaterialRoute(page: SplashPage, initial: true),
    MaterialRoute(page: MovieListPage),
    MaterialRoute(page: MovieDetailsPage),
    MaterialRoute(page: SignInPage),
  ],
)
class $Router {}
