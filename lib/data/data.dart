import '../models/cast_model.dart';
import '../models/genre_model.dart';
import '../models/movie_model.dart';

class MovieData {
  List<MovieModel> movieList = [];

  MovieData() {
    movieList.add(
      MovieModel(
          id: 0,
          name: 'Togo',
          rating: 4.0,
          genre: [
            "Drama",
          ],
          beginAt: '1/1/2024',
          endAt: '30/1/2024',
          radian: '1h30m',
          director: 'Ericson Core',
          storyLine:
              'Togo (1913 – December 5, 1929) was the lead sled dog of Leonhard Seppala and his dog sled team in the 1925 serum run to Nome across central and northern Alaska. Even though he covered more distance (260 miles) than his co-sledder Balto (55 miles), he didn\'t get as much fame.',
          image: "assets/image/togo.jpeg",
          imageLogo: "assets/image/togologo.png",
          trailer: [
            "assets/video/trailer/trailer_joker.mp4",
            "assets/video/trailer/trailer_joker.mp4",
            "assets/video/trailer/trailer_joker.mp4",
          ],
          castList: [
            MovieCastModel(
              name: "Willem Dafoe",
              photo: "assets/image/cast/willem.jpg",
            ),
            MovieCastModel(
              name: "Julianne Nicholson",
              photo: "assets/image/cast/julianne.jpg",
            ),
            MovieCastModel(
              name: "Christopher Heyerdahl",
              photo: "assets/image/cast/christopher.jpg",
            ),
            MovieCastModel(
              name: "Michael McElhatton",
              photo: "assets/image/cast/michael.jpg",
            ),
          ]),
    );
    movieList.add(
      MovieModel(
          id: 1,
          name: 'Joker',
          rating: 4.3,
          genre: ["Crime", "Drama"],
          beginAt: '1/1/2024',
          endAt: '30/1/2024',
          radian: '1h30m',
          director: 'Todd Phillips',
          storyLine:
              "Forever alone in a crowd, failed comedian Arthur Fleck seeks connection as he walks the streets of Gotham City. Arthur wears two masks -- the one he paints for his day job as a clown, and the guise he projects in a futile attempt to feel like he's part of the world around him. Isolated, bullied and disregarded by society, Fleck begins a slow descent into madness as he transforms into the criminal mastermind known as the Joker.",
          image: "assets/image/joker.jpeg",
          imageLogo: "assets/image/jokerlogo.png",
          trailer: [
            "assets/video/trailer/trailer_joker.mp4",
            "assets/video/trailer/trailer_joker.mp4",
            "assets/video/trailer/trailer_joker.mp4",
          ],
          castList: [
            MovieCastModel(
              name: "Joaquin Phoenix",
              photo: "assets/image/cast/joaquin.jpg",
            ),
            MovieCastModel(
              name: "Robert De Niro",
              photo: "assets/image/cast/niro.jpg",
            ),
            MovieCastModel(
              name: "Zazie Beetz",
              photo: "assets/image/cast/zazie.jpg",
            ),
            MovieCastModel(
              name: "Frances Conroy",
              photo: "assets/image/cast/frances.jpg",
            ),
          ]),
    );
    movieList.add(
      MovieModel(
          id: 2,
          name: 'Planet of the Apes',
          rating: 2.8,
          genre: ["Action", "Adventure", "Fantasy"],
          beginAt: '1/1/2024',
          endAt: '30/1/2024',
          radian: '1h30m',
          director: 'Tim Burton',
          storyLine:
              "Complex sociological themes run through this science-fiction classic about three astronauts marooned on a futuristic planet where apes rule and humans are slaves. The stunned trio discovers that these highly intellectual simians can both walk upright and talk. They have even established a class system and a political structure. The astronauts suddenly find themselves part of a devalued species, trapped and imprisoned by the apes.",
          image: "assets/image/apes.jpeg",
          imageLogo: "assets/image/apeslogo.png",
          trailer: [
            "assets/video/trailer/trailer_joker.mp4",
            "assets/video/trailer/trailer_joker.mp4",
            "assets/video/trailer/trailer_joker.mp4",
          ],
          castList: [
            MovieCastModel(
              name: "Cornelius",
              photo: "assets/image/cast/cornelius.jpg",
            ),
            MovieCastModel(
              name: "Dr. Zaius",
              photo: "assets/image/cast/zaius.jpg",
            ),
            MovieCastModel(
              name: "Dr. Zira",
              photo: "assets/image/cast/zira.jpg",
            ),
            MovieCastModel(
              name: "Nova",
              photo: "assets/image/cast/nova.jpg",
            )
          ]),
    );
  }
}

class GenreData {
  List<GenreModel> genreList = [];

  GenreData() {
    genreList.add(
      GenreModel(
        id: 0,
        name: 'All',
      ),
    );
    genreList.add(
      GenreModel(
        id: 1,
        name: 'Action',
      ),
    );
    genreList.add(
      GenreModel(
        id: 2,
        name: 'Drama',
      ),
    );
    genreList.add(
      GenreModel(
        id: 3,
        name: 'Adventure',
      ),
    );
    genreList.add(
      GenreModel(
        id: 4,
        name: 'Crime',
      ),
    );
    genreList.add(
      GenreModel(
        id: 5,
        name: 'Honor',
      ),
    );
  }
}
