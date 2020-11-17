import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget loginLeftInfo(BuildContext context){
  return Container(
    height: 500,
    width: 500,
    color: Colors.grey[200],
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.all(20),
          child: Text(
            'Log in to \nBLOGGER',
            style: TextStyle(
                height: 1.5,
                fontSize: 35,
                color: Colors.black,
                letterSpacing: 1.5,
                fontWeight: FontWeight.bold
            ),
          ),
        ),
//        SizedBox(height: 20,),
        Container(
          padding: EdgeInsets.fromLTRB(20, 0, 20, 20),
          child: Text(
            'Login to experience a world of knowledge and information. Read blog from Blogger users. You also post your own blog',
            style: TextStyle(
                fontSize: 18,
                letterSpacing: 1.5,
                height: 2,
                color: Colors.black87
            ),
          ),
        ),
//        SizedBox(height: 20,),
        Container(
          padding: EdgeInsets.fromLTRB(20, 0, 20, 20),
          child: Text(
            'If you are not a member of Blogger, click the Sign Up button to become a member.',
            style: TextStyle(
                fontSize: 18,
                letterSpacing: 1.5,
                height: 2,
                color: Colors.black87
            ),
          ),
        ),
        SizedBox(height: 10,),
        Container(
          alignment: Alignment.center,
          height: 70,
          width: 150,
          decoration: BoxDecoration(
            color: Colors.green,
            borderRadius: BorderRadius.circular(50),
          ),
          margin: EdgeInsets.only(left: 20),
          child: FlatButton(
            onPressed: (){ Navigator.pushNamed(context, '/signup');},
            hoverColor: Colors.green[900],
            padding: EdgeInsets.all(20),
            child: Text(
              'Sign Up',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.5,
                  fontSize: 18
              ),
            ),
          ),
        ),
      ],
    ),

//    margin: EdgeInsets.all(30),
  );
}