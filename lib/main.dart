import 'package:flutter/material.dart';
import 'package:movie/http/webclient.dart';
import 'package:movie/models/books.dart';
import 'package:movie/screens/movies_list.dart';
import 'package:movie/screens/principal.dart';
import 'package:movie/screens/splash.dart';

void main() {
  runApp(Movie());
}



class Movie extends StatefulWidget {
  @override
  State<Movie> createState() => _MovieState();
}

class _MovieState extends State<Movie> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Splash()
    );
  }
}

