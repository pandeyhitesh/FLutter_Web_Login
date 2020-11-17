import 'package:diebpredict/models/user.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget loginForm(GlobalKey<FormState> _formKey, User _user){
  return Container(
    padding: EdgeInsets.all(50),
    child: Form(
      key: _formKey,
      child: ListView(
        padding: EdgeInsets.all(30),
//        children: [
//          TextFormField(
//            decoration: InputDecoration(
//                labelText: 'First Name'
//            ),
//            validator: (value){
//              if(value.isEmpty){
//                return 'Please enter First Name';
//              }
//            },
//            onSaved: (val){
//                _user.firstName = val;
//            },
//          ),
//        ],
      ),
    ),
  );
}

//TextFormField(
//decoration: InputDecoration(
//labelText: 'First Name'
//),
//validator: (value){
//if(value.isEmpty){
//return 'Please enter First Name';
//}
//},
//onSaved: (val){
//setState(() {
//_user.firstName = val;
//});
//},
//),