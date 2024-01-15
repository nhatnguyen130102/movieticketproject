import 'package:flutter/material.dart';
import 'package:project2/screen/movie_detail/modules/trailer.dart';

class TrailerItem extends StatelessWidget {
  final String movie;
  const TrailerItem(
    this.movie, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Builder(builder: (context) {
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
                decoration: const BoxDecoration(color: Colors.black12),
                child: Trailer(movie),
              ),

              // GestureDetector(
              //   onTap: () {},
              //   child: SizedBox(
              //     height: 150,
              //     width: 250,
              //     child: Container(
              //       margin: const EdgeInsets.symmetric(
              //         vertical: 56,
              //       ),
              //       decoration: const BoxDecoration(
              //           shape: BoxShape.circle, color: darker2),
              //       child: const Icon(Icons.play_circle_fill, color: darker2),
              //     ),
              //   ),
              // )
            ],
          ));
    });
  }
}
