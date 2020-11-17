import 'package:diebpredict/constants/layout_constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget loginButton(BuildContext context){
  return FlatButton(

    onPressed: (){
      Navigator.pushNamed(context, '/login');
    },
    color: Colors.green,
    hoverColor: Colors.red,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(5)
    ),
    child: Text(
      'Login',
      style: navBarLoginButtonTextStyle
    ),
  );

}