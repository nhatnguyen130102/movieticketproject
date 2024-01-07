import '../models/cast_model.dart';
import '../models/genre_model.dart';
import '../models/movie_model.dart';

class MovieData {
  List<MovieModel> movieList = [];

  MovieData() {
    movieList.add(
      MovieModel(
          id: 0,
          name: 'Kẻ Ăn Hồn',
          rating: 4.9,
          genre: [
            "Kinh dị"
          ],
          beginAt: '15/12/2023',
          radian: '1h',
          director: 'Trần Hữu Tấn',
          storyLine: 'Phim về hàng loạt cái chết bí ẩn ở Làng Địa Ngục, nơi có ma thuật cổ xưa: 5 mạng đổi bình Rượu Sọ Người. Thập Nương - cô gái áo đỏ là kẻ nắm giữ bí thuật luyện nên loại rượu mạnh nhất',
          image: "assets/image/ke-an-hon.jpg",
          trailer: [
            "assets/video/trailer/trailer_joker.mp4",
            "assets/video/trailer/trailer_joker.mp4",
            "assets/video/trailer/trailer_joker.mp4",
          ],
          castList: [
            MovieCastModel(
              name: 'Võ Điền Gia Huy',
              photo: "assets/image/cast/vo-dien-gia-huy.jpg",
            ),
            MovieCastModel(
              name: "Hoàng Hà",
              photo: "assets/image/cast/hoang-ha.jpg",
            ),
            MovieCastModel(
              name: "Huỳnh Thanh Trực",
              photo: "assets/image/cast/huynh-thanh-truc.jpg",
            ),
            MovieCastModel(
              name: "NSƯT Chiều Xuân",
              photo: "assets/image/cast/nsut-chieu-xuan.jpg",
            ),
          ]),
    );
    movieList.add(
      MovieModel(
          id: 1,
          name: 'Arkie Và Ngày Mặt Trời Mất Tích',
          rating: 4.7,
          genre: [
            "Hoạt hình", "Phiêu lưu"
          ],
          beginAt: '05/01/2023',
          radian: '93m',
          director: 'Ricard Cussó',
          storyLine: 'Trên hành trình tìm cách giải cứu cha, Arkie đối mặt không ít thách thức và khám phá ra rằng mọi thứ không giống như bề ngoài của nó. Đối thủ của cô bé cũng cực kỳ “khó nhằn”. Đó là Dr. Maybee - kẻ chủ mưu nguy hiểm đứng sau việc phá hủy sự sống trên hành tinh của Arkie. Rõ ràng, Dr. Maybee còn có âm mưu lớn hơn đang muốn thực hiện. Và chìa khóa thành công của gã chính là Blister - người có thể tái tạo sự sống cho các sinh vật nhờ vào xúc tu kỳ diệu của mình. Chuyện gì xảy ra trên hành trình Arkie giải cứu cha? Liệu rằng hai cha con có thể ngăn cản Dr. Maybee tàn phá quê hương của mình?',
          image: "assets/image/arkie-va-ngay-mat-troi-mat-tich.jpg",
          trailer: [
            "assets/video/trailer/trailer_joker.mp4",
            "assets/video/trailer/trailer_joker.mp4",
            "assets/video/trailer/trailer_joker.mp4",
          ],
          castList: [
            MovieCastModel(
              name: 'Jillian Nguyen',
              photo: "assets/image/cast/jillian-nguyen.jpg",
            ),
            MovieCastModel(
              name: "Sam Neill",
              photo: "assets/image/cast/sam-neill.jpg",
            ),
            MovieCastModel(
              name: "Rob Collins",
              photo: "assets/image/cast/rob-collins.jpg",
            ),
          ]),
    );
    movieList.add(
      MovieModel(
          id: 2,
          name: 'Aquaman',
          rating: 4.8,
          genre: ["Hành động", "Phiêu lưu", "Viễn tưởng"],
          beginAt: '20/12/2023',
          radian: '1h24m',
          director: 'James Wan',
          storyLine:
          "Đạo diễn James Wan và Jason Momoa trong vai Aquaman—cùng với Patrick Wilson, Amber Heard, Yahya Abdul-Mateen II và Nicole Kidman sẽ trở lại trong phần tiếp theo của bộ phim DC có doanh thu cao nhất mọi thời đại “Aquaman Và Vương Quốc Thất Lạc",
          image: "assets/image/aquaman.jpg",
          trailer: [
            "assets/video/trailer/trailer_joker.mp4",
            "assets/video/trailer/trailer_joker.mp4",
            "assets/video/trailer/trailer_joker.mp4",
          ],
          castList: [
            MovieCastModel(
              name: "Jason Momoa",
              photo: "assets/image/cast/jason-momoa.jpg",
            ),
            MovieCastModel(
              name: "Patrick Wilson",
              photo: "assets/image/cast/patrick-wilson.jpg",
            ),
            MovieCastModel(
              name: "Ben Affleck",
              photo: "assets/image/cast/ben-affleck.jpg",
            ),
          ]),
    );
    movieList.add(
      MovieModel(
          id: 3,
          name: 'Joker',
          rating: 4.3,
          genre: ["Tội phạm", "Tâm lý"],
          beginAt: '1/1/2024',
          radian: '1h30m',
          director: 'Todd Phillips',
          storyLine:
              "Joker từ lâu đã là siêu ác nhân huyền thoại của điện ảnh thế giới. Nhưng có bao giờ bạn tự hỏi, Joker đến từ đâu và điều gì đã biến Joker trở thành biểu tượng tội lỗi của thành phố Gotham? JOKER sẽ là cái nhìn độc đáo về tên ác nhân khét tiếng của Vũ trụ DC – một câu chuyện gốc thấm nhuần, nhưng tách biệt rõ ràng với những truyền thuyết quen thuộc xoay quanh nhân vật mang đầy tính biểu tượng này.",
          image: "assets/image/joker.jpeg",
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
          id: 4,
          name: 'Hành Tinh Khỉ',
          rating: 2.8,
          genre: ["Hành động", "Phiêu lưu", "Giả tưởng"],
          beginAt: '1/1/2024',
          radian: '1h19m',
          director: 'Tim Burton',
          storyLine:
              "Bộ phim thuộc thể loại khoa học viễn tưởng nói về một nhóm những nhà khoa học du hành vào vũ trụ và trong một tại nạn để cứu chú khỉ thân yêu của mình mà Captain Leo Davidson đã bị lạc vào một hành tinh do khỉ nắm quyền và con người làm nô lệ... Sự xuất hiện của Captain Leo Davidson đã làm cho sự phân cấp trên hành tinh này đã thay đổi.",
          image: "assets/image/apes.jpg",
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
        name: 'Tất cả',
      ),
    );
    genreList.add(
      GenreModel(
        id: 1,
        name: 'Tâm lý',
      ),
    );
    genreList.add(
      GenreModel(
        id: 2,
        name: 'Hoạt hình',
      ),
    );
    genreList.add(
      GenreModel(
        id: 3,
        name: 'Kinh dị',
      ),
    );
    genreList.add(
      GenreModel(
        id: 4,
        name: 'Gia đình',
      ),
    );
    genreList.add(
      GenreModel(
        id: 5,
        name: 'Hài hước',
      ),
    );
    genreList.add(
      GenreModel(
        id: 6,
        name: 'Hành động',
      ),
    );
    genreList.add(
      GenreModel(
        id: 7,
        name: 'Phiêu lưu',
      ),
    );
    genreList.add(
      GenreModel(
        id: 8,
        name: 'Viễn tưởng',
      ),
    );
  }
}
