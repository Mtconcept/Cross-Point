import 'dart:async';
import 'package:crosspoint/onboardings.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'onboardings.dart';


class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(milliseconds: 5000), () {
      Navigator.of(context).push(
          MaterialPageRoute(builder: (BuildContext context) => Onboard()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff7D17AD),
      body: Container(
        child: Stack(
          children: [
            Positioned(
              right: 20,
              bottom: -20,
              child: ClipRect(
                clipBehavior: Clip.hardEdge,
                child: Container(
                  width: 600,
                  height: 600,
                  decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.1),
                      shape: BoxShape.circle),
                ),
              ),
            ),
            Column(
              children: <Widget>[
                Expanded(
                  flex: 4,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Center(
                        child: Image.asset('assets/images/logo1.png'),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Expanded(
              flex: 1,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding:EdgeInsets.only(bottom:24.0),
                      child: CircularProgressIndicator(
                        backgroundColor: Color(0xff7D17AD),
                      ),
                    ),
                  ],
                ),
              ),
            )

          ],
        ),
      ),
    );
  }
}
