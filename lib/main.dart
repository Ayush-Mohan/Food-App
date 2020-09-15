import 'package:flutter/material.dart';
import 'package:food_app/app_screens/login.dart';

// import 'app_screens/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Food Food',
      home: LoginForm(),
    );
  }
}

