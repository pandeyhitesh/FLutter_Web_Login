import 'package:flutter/material.dart';

Widget socialLoginButtons(){
  return Container(
    child: Column(
      children: [
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 1.5,
                width: 100,
                color: Colors.black26,
              ),
              Container(
                child: Text(
                  'OR',
                  style: TextStyle(
                    color: Colors.black26,
                    fontSize: 14,
                    letterSpacing: 1.5,
                  ),
                ),
                margin: EdgeInsets.symmetric(horizontal: 10),
              ),
              Container(
                height: 1.5,
                width: 100,
                color: Colors.black26,
              ),
            ],
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FlatButton(
                onPressed:(){},
                child: Container(
                  height: 40,
                  width: 40,
                  child: Image.asset('assets/images/fblogo.png'),
                ),
              ),
              SizedBox(width: 20,),
              FlatButton(
                onPressed:(){},
                child: Container(
                  height: 35,
                  width: 35,
                  child: Image.asset('assets/images/index.jpeg'),
                ),
              ),
              SizedBox(width: 20,),
              FlatButton(
                onPressed:(){},
                child: Container(
                  height: 40,
                  width: 40,
                  child: Image.asset('assets/images/inlogo.png'),
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}