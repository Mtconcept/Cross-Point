import 'package:flutter/material.dart';

import '../constant.dart';

class Indicators extends StatelessWidget{
  final int currentIndex;
  final int positionIndex;

  Indicators({this.currentIndex, this.positionIndex});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 12,
      width: 12,
      decoration: BoxDecoration(
        color: positionIndex == currentIndex+1?
        primaryCollor:
        Colors.grey.withOpacity(0.2),
        shape: BoxShape.circle,

      ),
    );
  }

}