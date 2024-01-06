import 'package:flutter/material.dart';
import 'package:project2/constants/constants.dart';
import 'package:project2/models/movie_model.dart';

class StarComponent extends StatelessWidget {
  final MovieModel e;
  const StarComponent(
    this.e, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Row(
          children: List.generate(5, (index) {
            int fullStars = e.rating.floor();
            double remainder = e.rating - fullStars;
            if (index < fullStars) {
              return const Icon(
                Icons.star,
                color: Colors.amberAccent,
                size: 20,
              );
            } else if (index == fullStars && remainder > 0) {
              return const Icon(
                Icons.star_half,
                color: Colors.amberAccent,
                size: 20,
              );
            } else {
              return const Icon(
                Icons.star_border,
                color: Colors.amberAccent,
                size: 20,
              );
            }
          }),
        ),
        Text(
          '(${e.rating})',
          style: const TextStyle(
            color: white,
            fontSize: 20,
          ),
        ),
      ],
    );
  }
}
