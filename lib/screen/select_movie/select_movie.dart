import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project2/constants/constants.dart';
import 'package:project2/models/movie_model.dart';

class SelectMovie extends StatelessWidget {
  final MovieModel movie;
  const SelectMovie(this.movie, {super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Stack(
              children: [
                Container(
                  padding: EdgeInsets.only(left: 50, right: 50, top: 16),
                  height: size.height / 10,
                  child: Center(
                    child: Text(
                      movie.name,
                      style: myTextStyle2,
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 16, top: 20),
                  child: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(Icons.arrow_back_ios),
                    color: white,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
