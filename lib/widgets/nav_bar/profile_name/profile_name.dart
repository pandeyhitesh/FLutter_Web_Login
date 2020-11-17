import 'package:diebpredict/constants/layout_constant.dart';
import 'package:flutter/material.dart';

Widget profileName(){
  String name = 'Scott';
  return Container(
    color: Colors.pink,
//    height: 20,
    width: 100,
    child: Padding(
      padding: const EdgeInsets.all(5.0),
      child: Text(
        name,
        style: navBarProfileNameStyle
      ),
    ),
  );
}