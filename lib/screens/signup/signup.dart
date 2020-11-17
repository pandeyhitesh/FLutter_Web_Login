import 'package:diebpredict/widgets/login_wigets/middle_separator.dart';
import 'package:diebpredict/widgets/login_wigets/signup_left_info.dart';
import 'package:diebpredict/widgets/login_wigets/social_login_buttons.dart';
import 'package:diebpredict/widgets/nav_bar/nav_bar.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool isObscured = true;
  final controller1 = TextEditingController();
  final controller2 = TextEditingController();
  bool _isEqual = true;
  bool _isLicenseChecked = true;

  @override
  void dispose() {
    controller1.dispose();
    controller2.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          NavBar(),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.grey[200],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  signUpLeftInfo(context),
                  middleSeparator(),
                  Container(
                    height: 630,
                    width: 500,
                    color: Colors.grey[200],
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 40,
                          child: Text(
                            'SignUp',
                            style: TextStyle(
                                fontSize: 35,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 2.0),
                          ),
//                          padding: EdgeInsets.only(top: 20),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          height: 70,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.white,
                          ),
                          padding: EdgeInsets.fromLTRB(10, 0, 10, 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
//                              color: Colors.green,
                                  padding: EdgeInsets.symmetric(horizontal: 20),
                                  child: Icon(
                                    Icons.person,
                                    color: Colors.black54,
                                  )),
                              Container(
                                height: 70,
                                width: 400,
//                              color: Colors.orange,
                                padding: EdgeInsets.only(right: 15, bottom: 5),
                                child: TextField(
                                  cursorColor: Colors.black12,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.black87,
                                    letterSpacing: 2.0,
                                  ),
                                  decoration: InputDecoration(
                                    labelText: 'Full Name',
                                    labelStyle: TextStyle(
                                        color: Colors.black54,
                                        fontSize: 12.0,
                                        letterSpacing: 2.0,
                                        fontWeight: FontWeight.bold),
                                    focusColor: Colors.orange,
                                  ),
                                ),
//                              margin: EdgeInsets.all(10),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          height: 70,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.white,
                          ),
                          padding: EdgeInsets.fromLTRB(10, 0, 10, 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
//                              color: Colors.green,
                                  padding: EdgeInsets.symmetric(horizontal: 20),
                                  child: Icon(
                                    Icons.email,
                                    color: Colors.black54,
                                  )),
                              Container(
                                height: 70,
                                width: 400,
//                              color: Colors.orange,
                                padding: EdgeInsets.only(right: 15, bottom: 5),
                                child: TextField(
                                  cursorColor: Colors.black12,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.black87,
                                    letterSpacing: 2.0,
                                  ),
                                  decoration: InputDecoration(
                                    labelText: 'Email',
                                    labelStyle: TextStyle(
                                        color: Colors.black54,
                                        fontSize: 12.0,
                                        letterSpacing: 2.0,
                                        fontWeight: FontWeight.bold),
                                    focusColor: Colors.orange,
                                  ),
                                ),
//                              margin: EdgeInsets.all(10),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          height: 70,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.white,
                          ),
                          padding: EdgeInsets.fromLTRB(10, 0, 10, 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
//                              color: Colors.green,
                                  padding: EdgeInsets.symmetric(horizontal: 20),
                                  child: Icon(
                                    Icons.vpn_key,
                                    color: Colors.black54,
                                  )),
                              Container(
                                height: 70,
                                width: 400,
//                              color: Colors.orange,
                                padding: EdgeInsets.only(right: 15, bottom: 5),
                                child: TextField(
                                  controller: controller1,
                                  cursorColor: Colors.black12,
                                  obscuringCharacter: '*',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.black87,
                                    letterSpacing: 2.0,
                                  ),
                                  decoration: InputDecoration(
                                    labelText: 'Password',
                                    labelStyle: TextStyle(
                                        color: Colors.black54,
                                        fontSize: 12.0,
                                        letterSpacing: 2.0,
                                        fontWeight: FontWeight.bold),
                                    focusColor: Colors.orange,
                                    suffixIcon: IconButton(
                                      onPressed: () {
                                        setState(() {
                                          if (isObscured == true) {
                                            isObscured = false;
                                          } else {
                                            isObscured = true;
                                          }
                                        });
                                      },
                                      icon: Icon(Icons.remove_red_eye),
                                      color: Colors.black54,
                                      hoverColor: Colors.green,
                                    ),
                                  ),
                                  obscureText: isObscured,
                                ),
//                              margin: EdgeInsets.all(10),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          height: 70,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.white,
                          ),
                          padding: EdgeInsets.fromLTRB(10, 0, 10, 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
//                              color: Colors.green,
                                  padding: EdgeInsets.symmetric(horizontal: 20),
                                  child: Icon(
                                    Icons.vpn_key,
                                    color: Colors.black54,
                                  )),
                              Container(
                                height: 70,
                                width: 400,
//                              color: Colors.orange,
                                padding: EdgeInsets.only(right: 15, bottom: 5),
                                child: TextField(
                                  controller: controller2,
                                  onSubmitted: (value) {
                                    if (controller2.text != controller1.text) {
                                      _isEqual = false;
                                    } else {
                                      _isEqual = true;
                                    }
                                  },
                                  cursorColor: Colors.black12,
                                  obscuringCharacter: '*',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.black87,
                                    letterSpacing: 2.0,
                                  ),
                                  decoration: InputDecoration(
                                    helperStyle: TextStyle(
                                      color: Colors.red,
                                      fontSize: 12,
                                      letterSpacing: 1.5,
                                    ),
                                    labelText: 'Confirm Password',
                                    labelStyle: TextStyle(
                                        color: Colors.black54,
                                        fontSize: 12.0,
                                        letterSpacing: 2.0,
                                        fontWeight: FontWeight.bold),
                                    focusColor: Colors.orange,
                                    suffixIcon: IconButton(
                                      onPressed: () {
                                        setState(() {
                                          if (isObscured == true) {
                                            isObscured = false;
                                          } else {
                                            isObscured = true;
                                          }
                                        });
                                      },
                                      icon: Icon(Icons.remove_red_eye),
                                      color: Colors.black54,
                                      hoverColor: Colors.green,
                                    ),
                                  ),
                                  obscureText: isObscured,
                                ),
//                              margin: EdgeInsets.all(10),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        !_isEqual
                            ? Container(
                                padding: EdgeInsets.fromLTRB(80, 5, 0, 0),
                                child: Text(
                                  'Password didn\'t match',
                                  style: TextStyle(
                                    color: Colors.red,
                                    fontSize: 14,
                                    letterSpacing: 1.5,
                                  ),
                                ),
                              )
                            : Container(
                                height: 19,
                              ),
                        SizedBox(
                          height: 30,
                        ),
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                alignment: Alignment.center,
                                height: 70,
                                width: 150,
                                decoration: BoxDecoration(
                                  color: Colors.green,
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                child: FlatButton(
                                  onPressed: () {},
                                  hoverColor: Colors.green[900],
                                  padding: EdgeInsets.all(25),
                                  child: Text(
                                    'SignUp',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        letterSpacing: 1.5,
                                        fontSize: 18),
                                  ),
                                ),
                              ),
                              Container(
                                child: Row(children: [
                                  Container(
                                    child: Checkbox(
                                      value: _isLicenseChecked,
                                      onChanged: (val){
                                        setState(() {
                                          _isLicenseChecked = val;
                                        });
                                      },

                                      checkColor: Colors.white,
                                      activeColor: Colors.orange,
                                      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                    ),
                                  ),
                                  Container(
                                    child: Text(
                                      'I accept the',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                          fontSize: 10,
                                          color: Colors.black87,
                                          letterSpacing: 1),
                                    ),
                                    margin: EdgeInsets.only(right: 0),
                                  ),
                                  Container(
                                    padding: EdgeInsets.only(right: 20),
                                    child: FlatButton(
                                      padding: EdgeInsets.symmetric(horizontal: 5),
                                      onPressed: () {},
                                      hoverColor: Colors.white54,
                                      child: Text(
                                        'Licence Agreements',
                                        style: TextStyle(
                                            fontSize: 10,
                                            color: Colors.black87,
                                            letterSpacing: 1),
                                      ),
                                    ),
                                  ),
                                ]),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        socialLoginButtons(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
