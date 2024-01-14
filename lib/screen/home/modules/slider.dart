import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:project2/screen/home/modules/components/star_component.dart';
import 'package:project2/screen/movie_detail/movie_detail.dart';

import '../../../constants/constants.dart';
import '../../../data/data.dart';

class SliderMovie extends StatelessWidget {
  const SliderMovie({
    super.key,
    required this.movie,
    required this.size,
  });

  final MovieData movie;
  final Size size;

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      items: movie.movieList
          .map(
            (e) => Builder(builder: (context) {
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MovieDetailPage(e),
                    ),
                  );
                },
                child: Stack(
                  children: [
                    Container(
                      width: size.width,
                      padding: const EdgeInsets.only(
                        left: 10,
                        bottom: 24,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: Image.asset(e.image).image),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14),
                        gradient: const LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Colors.black12,
                            Colors.black,
                          ],
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            width: size.width,
                            padding: const EdgeInsets.only(
                              bottom: 8,
                              left: 8,
                            ),
                            child: Text(
                              e.name,
                              style: const TextStyle(
                                fontSize: 20,
                                color: white,
                              ),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(
                              left: 8,
                              bottom: 8,
                            ),
                            child: StarComponent(e),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            }),
          )
          .toList(),
      options: CarouselOptions(
        autoPlay: true,
        enlargeCenterPage: true,
      ),
    );
  }
}
