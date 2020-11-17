import 'package:diebpredict/constants/layout_constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget navBarMenu(String title, String link){
  return FlatButton(
    padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
    onPressed: (){},
    focusColor: Colors.red,
    hoverColor: Colors.red,
//    color: Colors.green,
    child: Text(
        title,
        style: navBarMenuTextStyle
    ),
  );


}