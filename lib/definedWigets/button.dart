import 'package:crosspoint/constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ButtonProperty extends StatelessWidget{
  final VoidCallback onpress;
  final String text;

  const ButtonProperty({Key key, this.onpress, this.text}) : super(key: key);
  @override
  Widget build(BuildContext context) {
   return FlatButton(
       onPressed:onpress,
       child: Container(
         height: 57,
         width: double.infinity,
         decoration: BoxDecoration(
             color: primaryCollor,
             borderRadius: BorderRadius.circular(11)),
         child: Center(
             child: Text(
                      text,
               style: TextStyle(
                   color: Colors.white,
                   fontWeight: FontWeight.bold,
                   fontSize: 18),
             )),
       ));
  }

}

