import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'package:project2/constants/constants.dart';

import 'package:project2/models/movie_model.dart';
import 'package:project2/screen/home/modules/components/star_component.dart';
import 'package:project2/screen/home/modules/movie_detail/components/cast.dart';
import 'package:project2/screen/home/modules/movie_detail/test.dart';
import 'package:project2/screen/home/modules/movie_detail/trailer.dart';

import 'components/arrow_back.dart';
import 'components/backgroundwidget.dart';

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
                                  const EdgeInsets.only(left: 8, bottom: 8),
                              width: size.width,
                              child: Text(
                                widget.movie.name.toString(),
                                style:
                                    const TextStyle(fontSize: 18, color: white),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(left: 8, bottom: 8),
                              child: StarComponent(widget.movie),
                            ),
                            Container(
                              padding: const EdgeInsets.only(
                                left: 8,
                                bottom: 8,
                              ),
                              width: size.width,
                              child: Text(
                                widget.movie.genre.join(', '),
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.only(
                                left: 8,
                                bottom: 8,
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
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 24),
                                  child: Text(
                                    widget.movie.storyLine,
                                    style: const TextStyle(
                                      fontSize: 15,
                                      color: white,
                                      fontWeight: FontWeight.w200,
                                    ),
                                  ),
                                ),
                                buildTitle('Cast & Crew'),
                                SingleChildScrollView(
                                  padding: const EdgeInsets.only(
                                    right: 20,
                                  ),
                                  scrollDirection: Axis.horizontal,
                                  child: Row(
                                    children: widget.movie.castList
                                        .map(
                                          (e) => CasterItem(size: size, e: e),
                                        )
                                        .toList(),
                                  ),
                                ),
                                buildTitle('Trailer and Song'),
                                Expanded(
                                  child: ListView.builder(
                                    scrollDirection: Axis.horizontal,
                                    itemCount: widget.movie.trailer.length,
                                    itemBuilder: (context, index) {
                                      return Padding(
                                        padding: EdgeInsets.all(8),
                                        child: Container(
                                          width: size.width,
                                          height: size.width / 3,
                                          child: Trailer(
                                              widget.movie.trailer[index]),
                                        ),
                                      );
                                    },
                                  ),
                                ),
                                Gap(20),
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
