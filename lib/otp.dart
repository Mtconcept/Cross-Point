import 'package:crosspoint/constant.dart';
import 'package:crosspoint/definedWigets/button.dart';
import 'package:crosspoint/definedWigets/otpInput.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OTP extends StatefulWidget {
  @override
  _OTPState createState() => _OTPState();
}

class _OTPState extends State<OTP> {
  final GlobalKey<FormState> _form = GlobalKey<FormState>();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: ListView(
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top:60.0),
                  child: Container(
                    height: 180,
                    width: 180,
                    decoration: BoxDecoration(
                      color: Color(0xffffdee7),
                      shape: BoxShape.circle,
                    ),
                    child: Center(child: Image.asset('assets/images/mail 1.png')),
                  ),
                ),
                SizedBox(height: 16,),
                Text(
                  'Verify OTP',
                  style: TextStyle(
                    fontSize: 25,
                    color: primaryCollor,
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.none,
                    fontFamily: 'Gilroy'
                  ),
                ),
                SizedBox(height: 16,),
                Text(
                  'Please enter the four digit\ncode sent to your phone',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.grey[500],
                    decoration: TextDecoration.none,
                      fontFamily: 'Gilroy',
                    fontWeight: FontWeight.w400
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 50,),
                Form(
                    key: _form,
                    child: Padding(
                      padding: const EdgeInsets.only(left:24,right: 24),
                      child: Row(
                        children: <Widget>[
                          OtpInput(),
                          SizedBox(width: 16,),
                          OtpInput(),
                          SizedBox(width: 16,),
                          OtpInput(),
                          SizedBox(width: 16,),
                          OtpInput(),

                        ],
                      ),
                    )),
                SizedBox(height: 50,),
                ButtonProperty(
                  text: 'Verify',
                  onpress: (){},
                ),
                SizedBox(height: 24,),
                FlatButton(
                  splashColor: primaryCollor.withOpacity(0.2),
                    onPressed: null,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("I Didn’t get the code",style: TextStyle(fontSize: 16),),
                        SizedBox(width: 8,),
                        Text('Resend',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),)
                      ],
                    ))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
