import 'package:flutter/material.dart';
import 'package:project2/screen/movie_detail/modules/components/trailer_item.dart';

import '../../movie_detail.dart';

class TrailerBar extends StatelessWidget {
  const TrailerBar({super.key, required this.widget});

  final MovieDetailPage widget;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
          children: widget.movie.trailer.map((e) => TrailerItem(e)).toList()),
    );
  }
}
