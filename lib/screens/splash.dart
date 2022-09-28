import 'package:flutter/material.dart';
import 'dart:async';

import 'package:movie/screens/principal.dart';

class Splash extends StatefulWidget {
  @override
  _Splashstate createState() => _Splashstate();
}

class _Splashstate extends State<Splash> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    Timer(Duration(seconds: 3),(){
      Navigator.push(context, MaterialPageRoute(builder: (context) => Principal()));
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Movies...',
              style: TextStyle(
                fontSize: 32.0,
                fontWeight: FontWeight.w500,
              ),),
            SizedBox(height:5.0),
            CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation(Colors.blue),
              strokeWidth: 11.0,
            ),
          ],
        ),
      ),
    );
  }


}