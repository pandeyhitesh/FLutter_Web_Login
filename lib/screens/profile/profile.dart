import 'package:diebpredict/screens/login/login_form.dart';
import 'package:diebpredict/widgets/login_wigets/login_left_info.dart';
import 'package:diebpredict/widgets/login_wigets/middle_separator.dart';
import 'package:diebpredict/widgets/nav_bar/nav_bar.dart';
import 'package:diebpredict/widgets/profile_widgets/profile_details_right.dart';
import 'package:diebpredict/widgets/profile_widgets/profile_info_left.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          NavBar(),
          Expanded(
            child: Container(
              color: Colors.grey[200],
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  profileInfoLeft(
                    'Rohit Mehra',
                    'url',
                    'Software Engineer',
                    'Microsoft Corporation'
                  ),
                  middleSeparator(),
                  profileDetails('exampleemail@email.com', 12, 34, 15, '12-12-2019'),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
