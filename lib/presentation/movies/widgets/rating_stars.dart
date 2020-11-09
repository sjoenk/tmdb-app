import 'dart:math' show min, max;

import 'package:flutter/material.dart';

class RatingStars extends StatelessWidget {
  const RatingStars({
    @required this.reviewsReceivedAverageRating,
    this.size = 25.0,
    this.maxStars = 5.0,
    this.scale = 10.0,
    Key key,
  }) : super(key: key);

  final double reviewsReceivedAverageRating;
  final double size;
  final double maxStars;
  final double scale;

  @override
  Widget build(BuildContext context) {
    final averageRating = max(
      0,
      min(
        maxStars,
        reviewsReceivedAverageRating * (maxStars / scale),
      ),
    );
    final ratingRoundedDown = averageRating.floor();
    final ratingLeft = (maxStars - averageRating).floor();

    return Row(
      children: <Widget>[
        for (int i = 0; i < ratingRoundedDown; i++)
          Icon(
            Icons.star,
            size: size,
          ),
        if (!isWholeNumber(averageRating))
          Icon(
            Icons.star_half,
            size: size,
          ),
        for (int i = 0; i < ratingLeft; i++)
          Icon(
            Icons.star_border,
            size: size,
          ),
        // Text("★★★★★"),
      ],
    );
  }

  bool isWholeNumber(num value) => value is int || value == value.roundToDouble();
}
