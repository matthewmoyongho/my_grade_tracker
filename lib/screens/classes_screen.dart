import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ClassesScreen extends StatelessWidget {
  const ClassesScreen({Key? key}) : super(key: key);

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
              Container(
                padding: EdgeInsets.symmetric(horizontal: 15),
                width: double.infinity,
                alignment: Alignment.centerLeft,
                child: Text(
                  DateTime.now().toString(),
                  style: TextStyle(
                      color: Colors.grey, fontWeight: FontWeight.bold),
                ),
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.all(15),
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    'MY CLASSES',
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
                    ListTile(
                      tileColor: Colors.blue[900],
                      title: Text(
                        'COS201',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.blueGrey),
                      ),
                      subtitle: Text(
                        'Time: 10 - 12',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.blueGrey),
                      ),
                    )
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
