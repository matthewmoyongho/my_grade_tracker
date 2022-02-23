import 'package:flutter/material.dart';

class SectionTile extends StatelessWidget {
  String title;
  IconData icon;
  Color color;
  SectionTile(this.title, this.icon, this.color);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          height: 40,
          width: 40,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Icon(
            icon,
            size: 30,
          ),
        ),
        Text(title)
      ],
    );
  }
}
