import 'package:flutter/material.dart';
import 'package:my_grades_app/widgets/gp_progress_bar.dart';

class YearSummaryTile extends StatefulWidget {
  final String year;
  final double fsgp;
  final double ssgp;
  YearSummaryTile({required this.year, required this.fsgp, required this.ssgp});

  @override
  _YearSummaryTileState createState() => _YearSummaryTileState();
}

class _YearSummaryTileState extends State<YearSummaryTile> {
  Color setColor(double gp) {
    final progressColor;
    if (gp >= 4.5) {
      progressColor = Colors.blue[900];
    } else if (gp >= 3.5) {
      progressColor = Colors.green;
    } else if (gp >= 2.5) {
      progressColor = Colors.orange;
    } else {
      progressColor = Colors.red;
    }
    return progressColor;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
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
        Material(
          borderRadius: BorderRadius.circular(15),
          elevation: 5,
          child: Container(
            width: double.infinity,
            //padding: EdgeInsets.all(15),
            //height: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.white,
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    //color: Colors.blue[500],
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Year 1',
                          style:
                              TextStyle(color: Colors.blue[900], fontSize: 18),
                        ),
                        Text(
                          '${((widget.fsgp + widget.ssgp) / 2).toStringAsFixed(2)}',
                          style:
                              TextStyle(color: Colors.blue[900], fontSize: 18),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text('First Semester ${widget.fsgp}'),
                  SizedBox(
                    height: 5,
                  ),
                  GPProgressBar(widget.fsgp, setColor(widget.fsgp)),
                  SizedBox(
                    height: 5,
                  ),
                  Text('First Semester ${widget.ssgp}'),
                  SizedBox(
                    height: 5,
                  ),
                  GPProgressBar(widget.ssgp, setColor(widget.ssgp)),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
