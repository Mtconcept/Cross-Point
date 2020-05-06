import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'splashScreen.dart';

void main() {
  runApp(CrossPoint());
}

class CrossPoint extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Color pColor = Color(0xff7D17AD);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: pColor,
        fontFamily: 'Gilroy'
      ),
      home: SplashScreen(),
    );
  }
}
