import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:my_grades_app/widgets/assignment_tile.dart';

class AssignmentScreen extends StatelessWidget {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        systemNavigationBarColor: Colors.blue[900],
        statusBarColor: Colors.blue[900],
      ),
    );
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Colors.blue[900],
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                width: double.infinity,
                alignment: Alignment.centerRight,
                child: Container(
                  child: Text(
                    'M',
                    style: TextStyle(fontSize: 18),
                  ),
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(100),
                    border: Border.all(color: Colors.white, width: 1),
                  ),
                  height: 40,
                  width: 40,
                  alignment: Alignment.center,
                ),
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.all(15),
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    'MY ASSIGNMENTS',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(30),
                    topLeft: Radius.circular(30),
                  ),
                ),
                height: deviceSize.height * 0.75,
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 25),
                child: Column(
                  children: [
                    AssignmentTile(isChecked),
                    AssignmentTile(isChecked),
                    AssignmentTile(isChecked),
                    AssignmentTile(isChecked),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
