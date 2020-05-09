import 'package:crosspoint/constant.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: 250,
            decoration: BoxDecoration(
                  color: primaryCollor,
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(11),
                    bottomLeft: Radius.circular(11),
                  ),
            ),
          ),
        ],
      ),


    );
  }
}

