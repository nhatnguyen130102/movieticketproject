import 'package:flutter/material.dart';
import 'package:project2/constants/constants.dart';
import 'package:project2/data/data.dart';

import 'modules/category.dart';
import 'modules/comingsoon.dart';
import 'modules/header.dart';
import 'modules/promo.dart';
import 'modules/search.dart';
import 'modules/slider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var movie = MovieData();

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Header(size),
            Search(size),
            Category(size),
            const SizedBox(height: 24),
            buildTitle('Now Playing'),
            SliderMovie(movie: movie, size: size),
            const SizedBox(height: 24),
            buildTitle('Coming Soon'),
            ComingSoon(movie: movie),
            const SizedBox(height: 24),
            buildTitle('Promo'),
            Promo(size: size),
          ],
        ),
      ),
    );
  }

  //********** cần TEXT TRUNCATE ---> PROMO

  Padding buildTitle(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: appPadding,
        vertical: 12,
      ),
      child: Text(
        title,
        style: myTextStyle2,
      ),
    );
  }
}
