import 'package:flutter/material.dart';
import 'package:project2/screen/home/modules/movie_detail/trailer.dart';

import '../../../../../constants/constants.dart';
import '../movie_detail.dart';

class TrailerBar extends StatelessWidget {
  const TrailerBar({super.key, required this.widget});

  final MovieDetailPage widget;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
          children: widget.movie.trailer
              .map((e) => Builder(builder: (context) {
                    return Padding(
                        padding: const EdgeInsets.only(left: 24),
                        child: Stack(
                          children: [
                            // Container(
                            //   height: 160,
                            //   width: 260,
                            //   decoration: BoxDecoration(
                            //       image: DecorationImage(
                            //           image: AssetImage(e),
                            //           fit: BoxFit.cover)),
                            // ),

                            Container(
                              height: 150,
                              width: 250,
                              decoration:
                                  const BoxDecoration(color: Colors.black12),
                              child: Trailer(e),
                            ),

                            GestureDetector(
                              onTap: () {},
                              child: SizedBox(
                                height: 150,
                                width: 250,
                                child: Container(
                                  margin: const EdgeInsets.symmetric(
                                    vertical: 56,
                                  ),
                                  decoration: const BoxDecoration(
                                      shape: BoxShape.circle, color: darker2),
                                  child: Icon(Icons.play_circle_fill,
                                      color: darker2),
                                ),
                              ),
                            )
                          ],
                        ));
                  }))
              .toList()),
    );
  }
}
