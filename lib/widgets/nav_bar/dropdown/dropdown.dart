import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

Widget dropdown(BuildContext context){
  String dropdownvalue = '';
  return DropdownButton<String>(
    value: dropdownvalue,
    icon: Icon(Icons.arrow_drop_down),
    iconSize: 12,
    elevation: 16,
    style: TextStyle(
        color: Colors.black
    ),
    onChanged: (String newValue){
//      setState(() {
//        dropdownvalue = newValue;
//      });
    },
    items: <String>['','Profile', 'Logout']
        .map<DropdownMenuItem<String>>((String value){
      return DropdownMenuItem<String>(
        value: value,
        child: Text(value),
      );
    }).toList()   ,
  );
}