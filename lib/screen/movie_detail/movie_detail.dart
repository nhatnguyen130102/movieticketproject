import 'package:flutter/material.dart';

import 'package:project2/constants/constants.dart';

import 'package:project2/models/movie_model.dart';
import 'package:project2/screen/home/modules/components/star_component.dart';
import 'package:project2/screen/select_movie/select_movie.dart';

import 'modules/components/arrow_back.dart';
import 'modules/components/backgroundwidget.dart';
import 'modules/components/cast_bar.dart';
import 'modules/components/trailer_bar.dart';

class MovieDetailPage extends StatefulWidget {
  final MovieModel movie;
  MovieDetailPage(this.movie, {super.key});

  @override
  State<MovieDetailPage> createState() => _MovieDetailPageState();
}

class _MovieDetailPageState extends State<MovieDetailPage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            BackgoundWidget(
              size: size,
              movie: widget.movie,
            ),
            Container(
              height: size.height / 3.5,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.black12,
                    Colors.black87,
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
            ),
            const ArrowBack(),
            Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 24, top: size.height / 4.5),
                  child: Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(16.0),
                        child: Image.asset(
                          widget.movie.image,
                          fit: BoxFit.cover,
                          width: size.width / 2.5,
                        ),
                      ),
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              padding:
                                  const EdgeInsets.only(left: 18, bottom: 6),
                              width: size.width,
                              child: Text(
                                widget.movie.name.toString(),
                                style:
                                    const TextStyle(fontSize: 24, fontWeight: FontWeight.w600,color: white),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(left: 18, bottom: 10),
                              child: StarComponent(widget.movie, 5),
                            ),
                            Container(
                              padding: const EdgeInsets.only(
                                left: 18,
                                bottom: 4,
                              ),
                              width: size.width,
                              child: Text(
                                widget.movie.genre.join(', '),
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.only(
                                left: 18,
                                bottom: 4,
                              ),
                              width: size.width,
                              child: Text(
                                widget.movie.radian,
                                style: const TextStyle(
                                  fontSize: 12,
                                  color: white,
                                ),
                              ),
                            ),
                            ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        SelectMovie(widget.movie),
                                  ),
                                );
                              },
                              style: ElevatedButton.styleFrom(
                                primary: Colors.amber,
                              ),
                              child: const Text(
                                'Book Now',
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 17,
                                  color: Colors.black
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: size.height - 120,
                  child: Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(
                          top: 16,
                        ),
                        alignment: Alignment.center,
                        width: size.width,
                        child: TabBar(
                          tabs: const [
                            Tab(
                              text: 'About Movie',
                            ),
                            Tab(
                              text: 'Review',
                            ),
                          ],
                          controller: _tabController,
                          indicatorSize: TabBarIndicatorSize.label,
                          labelStyle: const TextStyle(
                            fontSize: 20,
                            color: white,
                          ),
                          unselectedLabelStyle: const TextStyle(
                            fontSize: 20,
                            color: white,
                          ),
                          indicatorColor: Colors.white70,
                        ),
                      ),
                      Expanded(
                        child: TabBarView(
                          controller: _tabController,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                buildTitle('Synopsis'),
                                Container(
                                  width: size.width,
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 24),
                                    child: SingleChildScrollView(
                                      scrollDirection: Axis.vertical,
                                      child: Text(
                                        widget.movie.storyLine,
                                        style: const TextStyle(
                                          fontSize: 16,
                                          color: Colors.white70,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 8),
                                buildTitle('Cast & Crew'),
                                CastBar(widget: widget, size: size),
                                const SizedBox(height: 8),
                                buildTitle('Trailer and Song'),
                                TrailerBar(widget: widget),
                                // ElevatedButton(
                                //   onPressed: () {
                                //     // Điều hướng đến trang mới khi button được nhấn
                                //     Navigator.push(
                                //       context,
                                //       MaterialPageRoute(
                                //           builder: (context) => VideoApp()),
                                //     );
                                //   },
                                //   child: Text('Chuyển đến Trang Thứ Hai'),
                                // ),
                              ],
                            ),
                            Container(
                              alignment: Alignment.center,
                              child: const Text('Review Page'),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Padding buildTitle(String title) {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 20,
          color: white,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
