class ImdbHelper {
  static String getBackdropPath(String file, BackdropSizes backdropSize) {
    if (file == null || file.isEmpty) return null;
    final size = _enumToString(backdropSize);
    return 'https://image.tmdb.org/t/p/$size/$file';
  }

  static String getPosterPath(String file, PosterSizes posterSize) {
    if (file == null) return null;
    final size = _enumToString(posterSize);
    return 'https://image.tmdb.org/t/p/$size/$file';
  }

  static String _enumToString(dynamic theEnum) {
    return theEnum.toString().split('.').last;
  }
}

enum BackdropSizes {
  w300,
  w780,
  w1280,
  original,
}

enum PosterSizes {
  w92,
  w154,
  w185,
  w342,
  w500,
  w780,
  original,
}
