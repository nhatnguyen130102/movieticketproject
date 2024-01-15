import 'package:flutter/material.dart';
import 'package:project2/constants/constants.dart';
import 'package:project2/models/movie_model.dart';

class ComingSoonItem extends StatelessWidget {
  final MovieModel e;
  const ComingSoonItem(
    this.e, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Builder(builder: (context) {
      DateTime today = DateTime.now();
      if (e.beginAt.isAfter(today)) {
        return Padding(
          padding: const EdgeInsets.only(left: 12),
          child: Column(
            children: [
              Container(
                width: 200,
                height: 300,
                margin: const EdgeInsets.symmetric(horizontal: 4),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: Image(
                    image: Image.asset(e.image).image,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 12),
                child: Container(
                  width: 200,
                  height: 50, // Độ cao tối đa của Text Container
                  child: Text(
                    e.name,
                    style: const TextStyle(
                      color: white,
                      fontSize: 18,
                      fontFamily: 'JosefinSans-VariableFont_wght.tff',
                    ),
                    maxLines: 2, // Số dòng tối đa
                    overflow: TextOverflow
                        .ellipsis, // Hiển thị dấu chấm elipsis khi quá dài
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 12),
                child: Container(
                  width: 200,
                  height: 50, // Độ cao tối đa của Text Container
                  child: Text(
                    '${e.beginAt.day}/${e.beginAt.month}/${e.beginAt.year}',
                    style: const TextStyle(
                      color: white,
                      fontSize: 18,
                    ),
                    maxLines: 2, // Số dòng tối đa
                    overflow: TextOverflow
                        .ellipsis, // Hiển thị dấu chấm elipsis khi quá dài
                  ),
                ),
              ),
            ],
          ),
        );
      } else {
        return SizedBox.shrink();
      }
    });
  }
}
