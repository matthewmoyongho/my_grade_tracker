import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TimeTableScreen extends StatelessWidget {
  const TimeTableScreen({Key? key}) : super(key: key);

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
                    'MY LECTURE TIMETABLE',
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
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                child: SingleChildScrollView(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Column(
                    children: [
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              fixedSize: Size(deviceSize.width * 0.8, 50),
                              primary: Colors.blue[900]),
                          onPressed: () {
                            //Add to timetable
                          },
                          child: Text(
                            'Add',
                            style: TextStyle(fontSize: 30),
                          )),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'MONDAY',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                            color: Colors.blueGrey),
                      ),
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
                      ),
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
                      ),
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
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'TUESDAY',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                            color: Colors.blueGrey),
                      ),
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
                      ),
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
                      ),
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
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'WEDNESDAY',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                            color: Colors.blueGrey),
                      ),
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
                      ),
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
                      ),
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
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'THURSDAY',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                            color: Colors.blueGrey),
                      ),
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
                      ),
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
                      ),
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
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'FRIDAY',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                            color: Colors.blueGrey),
                      ),
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
                      ),
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
                      ),
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
                      ),
                      SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
