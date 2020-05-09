import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'splashScreen.dart';

void main() {
  runApp(CrossPoint());
}

class CrossPoint extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Gilroy'
      ),
      home: SplashScreen(),
    );
  }
}
