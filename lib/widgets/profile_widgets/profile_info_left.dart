import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

Widget profileInfoLeft(String username, String imgUrl, String bio, String institute) {
  return Container(
    height: 500,
    width: 500,
//    color: Colors.blue,
    child: Stack(
      children: [
        Positioned(
          top: 30,
          left: 0,
          child: Container(
            height: 200,
            width: 500,
            decoration: BoxDecoration(
              color: Colors.blueAccent,
              borderRadius: BorderRadius.circular(20),
            ),
          ),
        ),
        Positioned(
          bottom: 30,
          left: 10,
          child: Container(
            height: 270,
            width: 480,
            decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(20),
            ),
            child: Stack(
//              mainAxisAlignment: MainAxisAlignment.end,
//              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Positioned(
                  top: 90,
                  left: 0,
                  child: Container(
                    margin: EdgeInsets.fromLTRB(30, 0, 0, 0),
                    padding: EdgeInsets.all(10),
                    child: Text(
                        username,
                      style: TextStyle(
                        fontSize: 35,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 2,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 150,
                  left: 0,
                  child: Container(
                    margin: EdgeInsets.fromLTRB(30, 0, 0, 0),
                    padding: EdgeInsets.all(10),
                    child: Text(
                      bio,
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 20,
                        letterSpacing: 1.5
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 185,
                  left: 0,
                  child: Container(
                    margin: EdgeInsets.fromLTRB(30, 0, 0, 0),
                    padding: EdgeInsets.all(10),
                    child: Text(
                      institute,
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                          letterSpacing: 1.2
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          left: 185,
          top: 130,
          child: Container(
            height: 130,
            width: 130,
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),

//        Container(),
      ],
    ),
  );
}
