import 'package:diebpredict/screens/login/login_form.dart';
import 'package:diebpredict/widgets/login_wigets/login_left_info.dart';

import 'package:diebpredict/widgets/login_wigets/middle_separator.dart';
import 'package:diebpredict/widgets/login_wigets/social_login_buttons.dart';
import 'package:diebpredict/widgets/nav_bar/nav_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:diebpredict/models/user.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _formKey = GlobalKey<FormState>();
  final _user = User();
  bool isObscured = true;

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
                  loginLeftInfo(context),
                  middleSeparator(),
                  Container(
                    height: 500,
                    width: 500,
                    color: Colors.grey[200],
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 100,
                          child: Text(
                            'Login',
                            style: TextStyle(
                                fontSize: 35,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 2.0
                            ),
                          ),
                          padding: EdgeInsets.only(top: 20),
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
                                  child: Icon(Icons.email,color: Colors.black54,)
                              ),
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
                                      fontWeight: FontWeight.bold
                                    ),
                                    focusColor: Colors.orange ,

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
                                  child: Icon(Icons.vpn_key, color: Colors.black54,)
                              ),
                              Container(
                                height: 70,
                                width: 400,
//                              color: Colors.orange,
                                padding: EdgeInsets.only(right: 15, bottom: 5),
                                child: TextField(
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
                                      fontWeight: FontWeight.bold
                                    ),
                                    focusColor: Colors.orange ,
                                    suffixIcon: IconButton(
                                      onPressed: (){
                                        setState(() {
                                          if(isObscured == true){
                                            isObscured = false;
                                          }
                                          else{
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
                          height: 50,
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
                                  onPressed: (){},
                                  hoverColor: Colors.green[900],
                                  padding: EdgeInsets.all(25),
                                  child: Text(
                                    'Login',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        letterSpacing: 1.5,
                                        fontSize: 18
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(right: 20),
                                child: FlatButton(
                                  onPressed: (){},
                                  hoverColor: Colors.white54,
                                  child: Text(
                                    'Reset Password?',
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.black87,
                                      letterSpacing: 1.5
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(height: 30,),
                        socialLoginButtons()
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

