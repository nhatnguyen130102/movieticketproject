import 'package:flutter/material.dart';
import 'package:project2/constants/constants.dart';
import '../../../data/data.dart';

class SelectCinema extends StatelessWidget{
  const SelectCinema({
    super.key,
    required this.date,
    required this.size,
  });

  final DateData date;
  final Size size;

  @override
  Widget build(BuildContext context){
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Stack(
              children: [
                SizedBox(
                  height: size.height / 10,
                  child: const Center(
                    child: Text(
                      'Movie Name',
                      style: myTextStyle2,
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 18, top: 18),
                  child: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(Icons.arrow_back_ios, size: 20),
                    color: white,
                  ),
                ),
              ],
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 18, horizontal: 24),
              height: size.height / 14,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: white)),
              child: Row(
                children: const [
                  Expanded(child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Chọn khu vực',
                      hintStyle: myTextStyle2,
                      icon: Padding(
                        padding: EdgeInsets.only(left: 12),
                        child: Icon(Icons.location_on_outlined, size: 32),
                      ),
                    ),
                  )),
                  Padding(
                    padding: EdgeInsets.only(right: 12),
                    child: Icon(
                      Icons.keyboard_arrow_down,
                      size: 36,
                      color: white,
                    ),
                  )
                ],
              ),
            ),

            buildTitle('Chọn ngày'),
            Padding(padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Row(
                children: []

                    
              ),
            )
          ],
        ),
      ),
    );
  }

  Container buildTitle(String content) {
    return Container(
            margin: EdgeInsets.symmetric(vertical: 8, horizontal: 24),
            child: Text(
              content,
              style: myTextStyle2,
            ),
          );
  }
}