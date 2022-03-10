import 'package:flutter/material.dart';

class GPProgressBar extends StatelessWidget {
  final double gp;
  Color color;
  GPProgressBar(this.gp, this.color);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
      ),
      width: (gp / 5) * MediaQuery.of(context).size.width,
      height: 10,
    );
  }
}
