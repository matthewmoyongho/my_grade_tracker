import 'package:flutter/material.dart';
import 'package:my_grades_app/constants.dart';

import '../../widgets/course_lecture_tile.dart';
import '../../widgets/gp_tile.dart';
import '../../widgets/section_tile.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.blue[900],
              // borderRadius: BorderRadius.circular(30),
            ),
          ),
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            height: MediaQuery.of(context).size.height * 0.6,
            child: ClipPath(
              clipper: WaveClipper(),
              child: Container(
                color: Colors.blue[500],
              ),
            ),
          ),
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            height: MediaQuery.of(context).size.height * 0.35,
            child: ClipPath(
              clipper: WaveClipper(),
              child: Container(
                color: Colors.white,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('AppLogo/ AppName'),
                      CircleAvatar(
                        radius: 30,
                        child: Text(
                          'M',
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    'Hi User',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'Good morning!',
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Material(
                    elevation: 5,
                    borderRadius: BorderRadius.circular(15),
                    child: Container(
                      padding: EdgeInsets.all(15),
                      height: 100,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                        // boxShadow: [
                        //   BoxShadow(
                        //       color: Colors.white,
                        //       blurRadius: 1,
                        //       spreadRadius: 3)
                        // ]
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                              onTap: () => Navigator.of(context)
                                  .pushNamed(kClassesScreen),
                              child: SectionTile(
                                'Classes',
                                Icons.book,
                              )),
                          GestureDetector(
                              onTap: () => Navigator.of(context)
                                  .pushNamed(kTimeTableScreen),
                              child: SectionTile(
                                'TimeTable',
                                Icons.book,
                              )),
                          GestureDetector(
                            onTap: () => Navigator.of(context)
                                .pushNamed(kAssignmentScreen),
                            child: SectionTile(
                              'Assignment',
                              Icons.book,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.blue[900]),
                    width: double.infinity,
                    padding: EdgeInsets.symmetric(vertical: 15),
                    child: Column(children: [
                      Row(
                        children: [
                          SizedBox(
                            width: 20,
                          ),
                          Icon(Icons.schedule, color: Colors.deepOrange),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            'Today\'s Schedule',
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          //
                          children: [
                            CourseLectureTile(
                              month: 'DEC',
                              courseTitle: 'Object Oriented programming',
                              date: '20',
                              lecturer: 'Prof. Bakpo',
                            ),
                            CourseLectureTile(
                              month: 'DEC',
                              courseTitle: 'Object Oriented programming',
                              date: '20',
                              lecturer: 'Prof. Bakpo',
                            ),
                            CourseLectureTile(
                              month: 'DEC',
                              courseTitle: 'Object Oriented programming',
                              date: '20',
                              lecturer: 'Prof. Bakpo',
                            ),
                            CourseLectureTile(
                              month: 'DEC',
                              courseTitle: 'Object Oriented programming',
                              date: '20',
                              lecturer: 'Prof. Bakpo',
                            ),
                          ],
                        ),
                      )
                    ]),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Expanded(
                    child: GPTile(),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class WaveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    debugPrint(size.width.toString());
    var path = Path();

    path.lineTo(0, size.height);
    var controlPoint = Offset((size.width / 2), size.height - 40);
    //var controlPoint = Offset((size.width / 2) * 1.7, size.height - 100);
    var endpoint = Offset(size.width, size.height);
    path.quadraticBezierTo(
        controlPoint.dx, controlPoint.dy, endpoint.dx, endpoint.dy);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    //TODO: implement shouldReclip
    return true;
  }
}
