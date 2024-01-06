import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:project2/models/cast_model.dart';

class CasterItem extends StatelessWidget {
  final MovieCastModel e;
  const CasterItem({
    required this.e,
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, bottom: 4),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12.0),
            child: Image.asset(
              e.photo,
              fit: BoxFit.cover,
              width: size.width / 4.5,
            ),
          ),
          Gap(10),
          Text(
            e.name,
            style: const TextStyle(
              fontSize: 10,
              color: Colors.white70,
            ),
          ),
        ],
      ),
    );
  }
}
