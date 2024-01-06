
import 'package:flutter/material.dart';

import 'constants/constants.dart';
import 'screen/home/home_screen.dart';

void main() async {

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Open-Sans',
        scaffoldBackgroundColor: darker,
        textTheme: Theme.of(context)
            .textTheme
            .apply(bodyColor: white, displayColor: white),
      ),
      home: const HomeScreen(),
    );
  }
}
