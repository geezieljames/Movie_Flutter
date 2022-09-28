import 'package:flutter/material.dart';
import 'package:movie/screens/movies_list.dart';
import 'package:movie/screens/principal.dart';
import 'package:movie/screens/splash.dart';

void main() => runApp(Movie());


class Movie extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Splash()
    );
  }
}

