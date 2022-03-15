import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_grades_app/widgets/year_summary_tile.dart';

class GreatPointOverViewScreen extends StatelessWidget {
  const GreatPointOverViewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GP Overview'),
        backgroundColor: Colors.blue[900],
        elevation: 0.0,
      ),
      drawer: Drawer(
        backgroundColor: Colors.blue[900],
        child: Column(
          children: [
            DrawerHeader(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: CircleAvatar(
                      child: Text(
                        'M',
                        style: TextStyle(color: Colors.blueGrey, fontSize: 30),
                      ),
                      radius: 50,
                    ),
                  ),
                  Text(
                    'moyonghomatthew@gmail.com',
                    style: TextStyle(fontSize: 16, color: Colors.white60),
                  ),
                ],
              ),
            ),
            ListTile(
              title: Text(
                'Overview',
                style: TextStyle(fontSize: 20, color: Colors.white60),
              ),
            ),
            ListTile(
              title: Text(
                'Year',
                style: TextStyle(fontSize: 20, color: Colors.white60),
              ),
            ),
            ListTile(
              title: Text(
                'Semester',
                style: TextStyle(fontSize: 20, color: Colors.white60),
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(15.0),
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Material(
                borderRadius: BorderRadius.circular(15),
                elevation: 5,
                child: Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(15),
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.blue[900],
                  ),
                  child: Center(
                    child: Text(
                      'CURRENT CGPA',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Material(
                borderRadius: BorderRadius.circular(100),
                elevation: 5,
                child: Container(
                  width: MediaQuery.of(context).size.width * .5,
                  padding: EdgeInsets.all(15),
                  height: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: Colors.blue[900],
                  ),
                  child: Center(
                    child: Text(
                      '5.00',
                      style: TextStyle(color: Colors.white, fontSize: 50),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Material(
                borderRadius: BorderRadius.circular(15),
                elevation: 5,
                child: Column(
                  children: [
                    Container(
                      width: double.infinity,
                      padding: EdgeInsets.all(15),
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        //color: Colors.blue[900],
                      ),
                      child: Center(
                        child: Text(
                          'CGPA progress chart ',
                          style:
                              TextStyle(color: Colors.blue[900], fontSize: 18),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: double.infinity,
                      padding: EdgeInsets.all(15),
                      height: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        // color: Colors.blue[900],
                      ),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'CGPA Graph:',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Center(
                              child: Text(
                                '5.00',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 50),
                              ),
                            ),
                          ]),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  // color: Colors.blue[900],
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(15),
                    topLeft: Radius.circular(15),
                  ),
                ),
                width: double.infinity,
                //alignment: Alignment.center,
                child: Text(
                  'Years',
                  style: TextStyle(color: Colors.blue[900], fontSize: 18),
                ),
              ),
              YearSummaryTile(fsgp: 5.0, ssgp: 2.5, year: 'First Year'),
              SizedBox(
                height: 20,
              ),
              YearSummaryTile(fsgp: 1.24, ssgp: 4.0, year: 'Second Year'),
              SizedBox(
                height: 20,
              ),
              YearSummaryTile(fsgp: 4.3, ssgp: 5.0, year: 'Third Year'),
              SizedBox(
                height: 20,
              ),
              YearSummaryTile(fsgp: 4.1, ssgp: 4.5, year: 'Fourth Year'),
            ],
          ),
        ),
      ),
    );
  }
}
