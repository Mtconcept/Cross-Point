import 'package:crosspoint/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class OtpInput extends StatelessWidget{
  TextEditingController textEditingController;
  @override
  Widget build(BuildContext context) {
    return  Expanded(
      child: TextFormField(
        textInputAction: TextInputAction.next,
        onEditingComplete:()=>FocusScope.of(context).skipTraversal,
        cursorColor: primaryCollor,
        obscureText: true,
        style:TextStyle(
            fontSize: 36,
            color: primaryCollor,
            fontWeight: FontWeight.w300
        ) ,
        controller: textEditingController,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.all(20),
          fillColor: textfieldColor,
          counter: Offstage(),
          labelStyle: TextStyle(
              fontWeight: FontWeight.bold,fontSize:46
          ),
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(11),
          ),
          filled: true,
        ),
        maxLength: 1,
        keyboardType: TextInputType.number,
      ),
    );
  }

}