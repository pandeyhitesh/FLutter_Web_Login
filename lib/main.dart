import 'package:diebpredict/Tests/login_form_test.dart';
import 'package:diebpredict/screens/login/login.dart';
import 'package:diebpredict/screens/profile/profile.dart';
import 'package:diebpredict/screens/signup/signup.dart';
import 'package:flutter/material.dart';
import 'home_page/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Blogger',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      routes: {
        '/profile' : (context) => Profile(),
        '/login' : (context) => Login(),
        '/signup' : (context) => SignUp(),
      },
      home: Login(),
    );
  }
}

