import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget circularProfileImage(){
  return Container(
    height: 30,
    width: 30,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20),
      color: Colors.red,
    ),

  );
}