import 'package:crosspoint/definedWigets/button.dart';
import 'package:crosspoint/login.dart';
import 'package:crosspoint/otp.dart';
import 'package:flutter/cupertino.dart';
import 'constant.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final GlobalKey<FormState> _form = GlobalKey<FormState>();
  TextEditingController textEditingController;
  TextEditingController phonetextEditingController;
  TextEditingController _password = TextEditingController();
  final TextEditingController _confirmpassword = TextEditingController();
  String initialCountry ='NG';
  PhoneNumber number = PhoneNumber(isoCode: 'NG');

  @override
  void initState() {
    super.initState();
    textEditingController = TextEditingController();
  }

  void dispose() {
    textEditingController.dispose();
    phonetextEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                height: 240,
                width: double.infinity,
                color: Color(0xffFFC760).withOpacity(0.1),
              ),
              Padding(
                padding: const EdgeInsets.all(
                  24,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Create An Account',
                      style: TextStyle(fontSize: 25, color: primaryCollor),
                    ),
                    SizedBox(
                      height: 36,
                    ),
                    Form(
                        key: _form,
                        child: Column(
                          children: [
                            TextFormField(
                              controller: textEditingController,
                              decoration: InputDecoration(
                                filled: true,
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(11),
                                    borderSide: BorderSide.none),
                                fillColor: textfieldColor,
                                hintText: 'Full Name',
                              ),
                              validator: (val) {
                                if (val.length == 0) {
                                  return "This field can't be Empty";
                                } else {
                                  return null;
                                }
                              },
                            ),
                            SizedBox(
                              height: 24,
                            ),
                            InternationalPhoneNumberInput.withCustomDecoration(
                              onInputChanged: (PhoneNumber number){
                                print(number.phoneNumber);
                              },
                              onInputValidated: (bool value){
                                print(value);
                              },
                              ignoreBlank: false,
                              autoValidate: true,
                              initialValue: number,
                              textFieldController: phonetextEditingController,
                              inputDecoration: InputDecoration(
                                filled: true,
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(11),
                                    borderSide: BorderSide.none),
                                fillColor: textfieldColor,
                                hintText: 'Phone Number',
                              ),
                              selectorType: PhoneInputSelectorType.DROPDOWN,

                            ),
                            SizedBox(
                              height: 24,
                            ),
                            TextFormField(
                              controller: _password,
                              decoration: InputDecoration(
                                filled: true,
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(11),
                                    borderSide: BorderSide.none),
                                fillColor: textfieldColor,
                                hintText: 'Password',
                              ),
                              validator: (val) {
                                if (val.isEmpty) {
                                  return "This field can't be Empty";
                                } else {
                                  return null;
                                }
                              },
                              obscureText: true,
                            ),
                            SizedBox(
                              height: 24,
                            ),
                            TextFormField(
                              controller: _confirmpassword,
                              decoration: InputDecoration(
                                  filled: true,
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(11),
                                      borderSide: BorderSide.none),
                                  fillColor: textfieldColor,
                                  hintText: 'Confirm Password'),
                              validator: (val) {
                                if (val.isEmpty) {
                                  return "This field can't be Empty";
                                } else if (val != _password.text) {
                                  return 'incorrect Match';
                                }
                                return null;
                              },
                              obscureText: true,
                            ),
                            SizedBox(
                              height: 46,
                            ),
                            ButtonProperty(
                                text: 'Sign-Up',
                                onpress: () {
                                  if (_form.currentState.validate()) {
                                    Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: (BuildContext context) =>
                                                OTP()));
                                  }
                                }),
                          ],
                        )),
                    SizedBox(
                      height: 24,
                    ),
                    Center(
                        child: Text(
                      'Or Sign Up With',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    )),
                    SizedBox(
                      height: 16,
                    ),
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                      FlatButton(
                        onPressed: () {},
                        child: Image.asset('assets/images/google.png'),
                      ),
                      SizedBox(
                        width: 24,
                      ),
                      FlatButton(
                        onPressed: () {},
                        child: Image.asset('assets/images/facebook.png'),
                      ),
                    ]),
                    SizedBox(
                      width: 36,
                    ),
                    FlatButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (BuildContext context) => Login()));
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Already have an account ?',
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          ),
                          Text(
                            'Login',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
  void getPhoneNumber(String phoneNumber) async{
    PhoneNumber number=await PhoneNumber.getRegionInfoFromPhoneNumber(phoneNumber,'NG');
     setState(() {
       this.number=number;
     });
  }
}
