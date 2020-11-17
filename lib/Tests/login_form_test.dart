import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


class LoginFormTest extends StatefulWidget {
  LoginFormTest({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _LoginFormTestState createState() => new _LoginFormTestState();
}

class _LoginFormTestState extends State<LoginFormTest> {
//  final GlobalKey<FormState> _formKey = new GlobalKey<FormState>();
//  List<String> _colors = <String>['', 'red', 'green', 'blue', 'orange'];
//  String _color = '';

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
//      appBar: new AppBar(
//        title: new Text(widget.title),
//      ),
      body: Container(
            color: Colors.grey,
            padding: EdgeInsets.all(10),
            child: TextField(
              decoration: InputDecoration(
                labelText: 'hello',
                hintText: 'enter name'
              ),
            ),
          ),

    );
  }
}