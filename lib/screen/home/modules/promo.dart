import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../constants/constants.dart';

class Promo extends StatelessWidget {
  const Promo({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: appPadding,
        right: appPadding,
        bottom: 12,
      ),
      child: Container(
        height: size.height / 8,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(22),
          gradient: const LinearGradient(colors: [
            CupertinoColors.systemBlue,
            Colors.lightBlueAccent,
          ]),
        ),
        child: Row(
          children: [
            const Expanded(
              flex: 2,
              child: Padding(
                padding: EdgeInsets.symmetric(
                  vertical: 16,
                  horizontal: 20,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Chào 2024',
                      style: TextStyle(
                        color: white,
                        fontWeight: FontWeight.w500,
                        fontSize: 22,
                      ),
                    ),
                    Text(
                      'Sự kiện 2024',
                      style: TextStyle(
                        fontSize: 16,
                        color: white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Spacer(),
            Expanded(
              child: RichText(
                text: const TextSpan(
                  children: [
                    TextSpan(
                      text: 'OFF',
                      style: TextStyle(
                        color: white,
                        fontSize: 20,
                      ),
                    ),
                    TextSpan(text: '  '),
                    TextSpan(
                      text: '50%',
                      style: TextStyle(
                        color: white,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

