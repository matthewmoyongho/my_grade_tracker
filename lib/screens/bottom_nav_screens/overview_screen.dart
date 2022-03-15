import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:my_grades_app/screens/bottom_nav_screens/great_point_overview_screen.dart';
import 'package:my_grades_app/screens/bottom_nav_screens/home.dart';
import 'package:my_grades_app/screens/bottom_nav_screens/notification_screen.dart';
import 'package:my_grades_app/screens/bottom_nav_screens/profile_screen.dart';

import '../../widgets/bottom_nav_bar.dart';

class OverviewScreen extends StatefulWidget {
  @override
  State<OverviewScreen> createState() => _OverviewScreenState();
}

class _OverviewScreenState extends State<OverviewScreen> {
  int currentIndex = 0;

  void onTap(index) {
    setState(() {
      currentIndex = index;
    });
  }

  List navScreens = [
    Home(),
    GreatPointOverViewScreen(),
    NotificationScreen(),
    ProfileScreen()
  ];

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        systemNavigationBarColor: Colors.blue[900],
        statusBarColor: Colors.blue[900],
      ),
    );
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.zero,
        child: AppBar(
          elevation: 0,
        ),
      ),
      body: navScreens[currentIndex],
      bottomNavigationBar: BottomNavBar(onTap, currentIndex),
    );
  }
}
