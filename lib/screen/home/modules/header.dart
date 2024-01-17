
import 'package:flutter/material.dart';
import 'package:project2/constants/constants.dart';

class Header extends StatelessWidget {
  final Size size;
  const Header(this.size,{super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(
        top: 50,
        left: appPadding,
        right: appPadding,
      ),
      child: SizedBox(
        height: size.height/20,
        child:  Row(
          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(
              Icons.local_activity,
              color: Colors.white,
              size: 24,
              weight: 700,
            ),
            Spacer(),
            Text(
              'OUZ CINEMA',
              style: TextStyle(
                color: Colors.white,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.bold,
                fontSize: 24
              ),
            ),
            Spacer(),
            CircleAvatar(
              radius: size.height/32,
              backgroundImage: AssetImage('assets/image/apes.jpeg'),
            ),
          ],
        ),
      ),
    );
  }
}
