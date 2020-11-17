import 'package:diebpredict/widgets/main_logo/main_logo.dart';
import 'package:flutter/material.dart';
import 'package:diebpredict/constants/layout_constant.dart';
import 'circular_profile_image/circular_profile_image.dart';
import 'login_button/login_button.dart';
import 'nav_bar_menu/nav_bar_menu.dart';

class NavBar extends StatefulWidget {
  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  Widget dropdownvalue = Text('text');

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      color: Colors.white10,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          mainLogo(),
          Container(
            child: Row(
              children: [
                Container(
                  width: 300,
//                      color: Colors.white,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      navBarMenu('Home', 'link'),
                      navBarMenu('Blog', 'link'),
                      navBarMenu('About Us', 'link'),
//                          navBarMenu('Home', 'link'),
                    ],
                  ),
                ),
                Container(
                  height: 50.0,
                  width: 300,
//                        color: Colors.orangeAccent,
                  child: isLoggedin
                      ? Container(
//                          width: 150,
//                          color: Colors.black,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: 10,
                              ),
                              circularProfileImage(),
//                              profileName(),
                              SizedBox(
                                width: 10,
                              ),
                              Container(
                                child: DropdownButton<Widget>(
//                                  value: dropdownvalue,
                                  hint: Text(
                                    'Username',
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.black87,
                                      letterSpacing: 1.2,
                                    ),
                                  ),
                                  underline: Container(
                                    height: 2.0,
                                    color: Colors.green,
                                  ),
                                  icon: Icon(Icons.arrow_drop_down),
                                  elevation: 20,
                                  onChanged: (newValue) {
                                    setState(() {
                                      dropdownvalue = newValue;
                                    });
                                  },
                                  items: [
                                    DropdownMenuItem(
                                      value: Text('1'),
                                      child: Row(
                                        children: [
                                          Icon(Icons.person_outline),
                                          Container(
                                            width: 100,
                                            child: FlatButton(
                                              child: Text('Profile'),
                                              onPressed: () {
                                                Navigator.pushNamed(
                                                    context, '/profile');
                                              },
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    DropdownMenuItem(
                                      value: Text('2'),
                                      child: Row(
                                        children: [
                                          Icon(
                                            Icons.cancel,
                                            color: Colors.red,
                                          ),
                                          Container(
                                            width: 100,
                                            child: FlatButton(
                                              child: Text('Logout'),
                                              onPressed: () {
                                                setState(() {
                                                  isLoggedin = false;
                                                });
                                              },
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
//                          margin: EdgeInsets.only(right: 50),
                        )
                      : Container(
                          width: 50,
//                          color: Colors.black,
                          child: loginButton(context),
                          margin: EdgeInsets.only(left: 15, right: 200),
                        ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
