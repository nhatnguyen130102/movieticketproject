import 'package:flutter/material.dart';
import 'package:project2/constants/constants.dart';
import 'package:project2/models/movie_model.dart';

class StarComponent extends StatelessWidget {
  final MovieModel e;
  final int countStar;
  const StarComponent(
    this.e, this.countStar,{
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Row(
          children: List.generate(countStar, (index) {
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
        const SizedBox(width: 4),
        Text(
          '${e.rating}',
          style: const TextStyle(
            color: white,
            fontWeight: FontWeight.w400,
            fontSize: 20,
          ),
        ),
      ],
    );
  }
}
