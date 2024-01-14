import 'package:flutter/material.dart';
import '../movie_detail.dart';
import 'cast_item.dart';

class CastBar extends StatelessWidget {
  const CastBar({
    super.key,
    required this.widget,
    required this.size,
  });

  final MovieDetailPage widget;
  final Size size;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.only(
        right: 20,
      ),
      scrollDirection: Axis.horizontal,
      child: Row(
        children: widget.movie.castList
            .map(
              (e) => CasterItem(size: size, e: e),
        )
            .toList(),
      ),
    );
  }
}