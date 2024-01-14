import 'package:flutter/material.dart';
import 'package:project2/screen/home/modules/comingsoon/comingsoon_item.dart';

import '../../../constants/constants.dart';
import '../../../data/data.dart';

class ComingSoon extends StatelessWidget {
  const ComingSoon({
    super.key,
    required this.movie,
  });

  final MovieData movie;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(
        horizontal: appPadding,
      ),
      scrollDirection: Axis.horizontal,
      child: Row(
        children: movie.movieList
            .map(
              (e) => ComingSoonItem(e),
            )
            .toList(),
      ),
    );
  }
}
