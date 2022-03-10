import 'package:flutter/material.dart';

import './constants.dart';
import './screens/authentication/sign_in.dart';
import './screens/authentication/sign_up.dart';
import './screens/great_point/great_point_overview_screen.dart';
import './screens/great_point/semester.dart';
import './screens/great_point/year.dart';
import '../screens/bottom_nav_screens/overview_screen.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      //home: SignIn(),
      initialRoute: kSignUpScreenRoute,
      routes: {
        kSignUpScreenRoute: (context) => SignUpScreen(),
        kSignInScreenRoute: (context) => SignInScreen(),
        kOverviewScreenRoute: (context) => OverviewScreen(),
        kSemesterScreenRoute: (context) => SemesterScreen(),
        kYearScreenRoute: (context) => YearScreen(),
        kGreatPointOverViewScreen: (context) => GreatPointOverViewScreen(),
      },
    );
  }
}
