import 'cast_model.dart';

class MovieModel {
  late int id;
  late String name;
  late List<String> genre;
  late double rating;
  late String director;
  late String storyLine;
  late String image;
  late List<MovieCastModel> castList;
  late DateTime beginAt;
  late String radian;
  late List<String> trailer;

  MovieModel({
    required this.id,
    required this.genre,
    required this.name,
    required this.rating,
    required this.director,
    required this.storyLine,
    required this.image,
    required this.castList,
    required this.beginAt,
    required this.radian,
    required this.trailer,
  });
}
