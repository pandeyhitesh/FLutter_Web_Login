import 'package:diebpredict/widgets/profile_widgets/countsFlatButton.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget profileDetails(
    String email, int postCount, int followerCount, int followingCount, String dateJoined) {
  return Container(
    height: 500,
    width: 500,
    padding: EdgeInsets.all(20),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              FlatButton(
                onPressed: () {},
                hoverColor: Colors.grey[300],
                child: countsFlatButton(postCount, 'Posts')
              ),
              FlatButton(
                onPressed: () {},
                hoverColor: Colors.grey[300],
                child: countsFlatButton(followerCount, 'Followers'),
              ),
              FlatButton(
                onPressed: () {},
                hoverColor: Colors.grey[300],
                child: countsFlatButton(followingCount, 'Following'),
              ),
            ],
          ),
        ),
        SizedBox(height: 20,),
        Container(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Email:',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                  letterSpacing: 1.5,
                ),
              ),
              SizedBox(height: 10,),
              Text(
                email,
                style: TextStyle(
                  fontSize: 16,
                  letterSpacing: 1.5,
                ),
              )
            ],
          )
        ),
        SizedBox(height: 20,),
        Container(
            padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'My blogs:',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                    letterSpacing: 1.5,
                  ),
                ),
                SizedBox(height: 10,),
                Text(
                  'Rohit Talks',
                  style: TextStyle(
                    fontSize: 16,
                    letterSpacing: 1.5,
                  ),
                )
              ],
            )
        ),
        SizedBox(height: 20,),
        Container(
            padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'On Blogger since:',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                    letterSpacing: 1.5,
                  ),
                ),
                SizedBox(height: 10,),
                Text(
                  dateJoined.toString(),
                  style: TextStyle(
                    fontSize: 16,
                    letterSpacing: 1.5,
                  ),
                )
              ],
            )
        ),
      ],
    ),
  );
}
