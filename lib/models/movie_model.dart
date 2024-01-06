import 'cast_model.dart';

class MovieModel {
  late int id;
  late String name;
  late List<String> genre;
  late double rating;
  late String director;
  late String storyLine;
  late String image;
  late String imageLogo;
  late List<MovieCastModel> castList;
  late String beginAt;
  late String endAt;
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
    required this.imageLogo,
    required this.castList,
    required this.beginAt,
    required this.endAt,
    required this.radian,
    required this.trailer,
  });
}
