import 'package:flutter/material.dart';

class CourseLectureTile extends StatelessWidget {
  String date;
  String courseTitle;
  String lecturer;
  String month;
  CourseLectureTile(
      {required this.month,
      required this.courseTitle,
      required this.date,
      required this.lecturer});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 10),
      width: MediaQuery.of(context).size.width * 0.6,
      height: MediaQuery.of(context).size.height * 0.2,
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        children: [
          Column(
            children: [
              Text(
                date,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Text(
                'DEC',
                style: TextStyle(fontSize: 18, color: Colors.black38),
              ),
            ],
          ),
          SizedBox(
            width: 20,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  courseTitle,
                  //overflow: TextOverflow.ellipsis,
                  softWrap: true,
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  '10:00 - 12.00',
                  style: TextStyle(fontSize: 15, color: Colors.black38),
                ),
                Expanded(child: SizedBox()),
                Text(
                  lecturer,
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
