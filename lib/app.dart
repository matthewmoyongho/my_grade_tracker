import 'package:flutter/material.dart';
import 'package:my_grades_app/screen/authentication/sign_up.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(primarySwatch: Colors.blue), home: SignUp());
  }
}
