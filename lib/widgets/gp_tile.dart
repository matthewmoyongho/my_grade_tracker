import 'package:flutter/material.dart';
import 'package:my_grades_app/constants.dart';

class GPTile extends StatelessWidget {
  const GPTile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.of(context).pushNamed(kGreatPointOverViewScreen),
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(15)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            RichText(
              text: TextSpan(
                children: [
                  WidgetSpan(
                      child: Icon(
                        Icons.gps_fixed_sharp,
                        color: Colors.green,
                      ),
                      alignment: PlaceholderAlignment.middle),
                  TextSpan(
                      text: ' CGPA',
                      style: TextStyle(
                        color: Colors.black,
                      ))
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            FittedBox(
              child: Text(
                '3.7',
                style: TextStyle(fontSize: 20),
              ),
            ),
            FittedBox(
              child: Text(
                'Up from the last semester',
                style: TextStyle(fontSize: 14),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
