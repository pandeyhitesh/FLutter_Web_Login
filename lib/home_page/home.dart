import 'package:diebpredict/widgets/main_logo/main_logo.dart';
import 'package:diebpredict/widgets/nav_bar/circular_profile_image/circular_profile_image.dart';
import 'package:diebpredict/widgets/nav_bar/login_button/login_button.dart';
import 'package:diebpredict/widgets/nav_bar/nav_bar.dart';
import 'package:diebpredict/widgets/nav_bar/nav_bar_menu/nav_bar_menu.dart';
import 'package:diebpredict/widgets/nav_bar/profile_name/profile_name.dart';
import 'package:diebpredict/widgets/profile_dropdown_items/profile_dropdown_items.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  Widget dropdownvalue = Text('hello');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          NavBar(),
          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  Container(
                    height: 500,
                    color: Colors.green,
                  ),
                  Container(
                    height: 500,
                    color: Colors.red,
                  ),
                  Container(
                    height: 500,
                    color: Colors.blue,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
