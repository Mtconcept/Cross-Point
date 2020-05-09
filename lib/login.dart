import 'package:crosspoint/constant.dart';
import 'package:crosspoint/definedWigets/button.dart';
import 'package:crosspoint/home.dart';
import 'package:crosspoint/signUp.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final GlobalKey<FormState> _form = GlobalKey<FormState>();
  TextEditingController textEditingController;
  TextEditingController phonetextEditingController;
  final TextEditingController _password = TextEditingController();
  PhoneNumber number = PhoneNumber(isoCode: 'NG');
  @override
  void initState() {
    super.initState();
    textEditingController = TextEditingController();
  }

  void dispose() {
    textEditingController.dispose();
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
                      'Login',
                      style: TextStyle(fontSize: 25, color: primaryCollor),
                    ),
                    SizedBox(
                      height: 36,
                    ),
                    Form(
                        key: _form,
                        child: Column(
                          children: [
                            // Phone Number
                            InternationalPhoneNumberInput.withCustomDecoration(
                              onInputChanged: (PhoneNumber number) {
                                print(number.phoneNumber);
                              },
                              onInputValidated: (bool value) {
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

                            //password TextField
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
                              height: 46,
                            ),

//                            defined button property
                            ButtonProperty(
                              text: 'Sign-Up',
                              onpress: () {
                                if (_form.currentState.validate()) {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (BuildContext context) =>
                                          Homepage()));
                                }
                              },
                            ),
                          ],
                        )),
                    SizedBox(
                      height: 24,
                    ),

                    Center(
                        child: Text(
                      'Or Login With',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    )),
                    SizedBox(
                      height: 16,
                    ),

                    // google & facebook Sign-up
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

                    // Already have an account
                    FlatButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (BuildContext context) => SignUp()));
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
                            'Create Account',
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
//
  void getPhoneNumber(String phoneNumber) async{
    PhoneNumber number=await PhoneNumber.getRegionInfoFromPhoneNumber(phoneNumber,'NG');
    setState(() {
      this.number=number;
    });
  }
}
