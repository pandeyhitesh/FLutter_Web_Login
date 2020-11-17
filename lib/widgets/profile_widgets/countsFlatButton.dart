import 'package:flutter/material.dart';

Widget countsFlatButton(int count, String title){
  return Container(
    height: 80,
    width: 70,
    decoration: BoxDecoration(
//                  color: Colors.red,
    ),
    child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            count.toString(),
            style: TextStyle(fontSize: 20, letterSpacing: 1.5),
          ),
          SizedBox(
            height: 15,
          ),
          Text(
            title,
            style: TextStyle(fontSize: 14, letterSpacing: 1),
          )
        ]),
  );
}