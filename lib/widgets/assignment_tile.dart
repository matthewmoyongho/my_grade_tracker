import 'package:flutter/material.dart';

class AssignmentTile extends StatefulWidget {
  bool isChecked;

  AssignmentTile(this.isChecked);

  @override
  State<AssignmentTile> createState() => _AssignmentTileState();
}

class _AssignmentTileState extends State<AssignmentTile> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      tileColor: Colors.blue[900],
      trailing: Checkbox(
        value: widget.isChecked,
        onChanged: (vale) {
          setState(() {
            widget.isChecked = vale!;
          });
        },
        activeColor: Colors.blue[900],
      ),
      title: Text(
        'COS201',
        style: TextStyle(
            fontWeight: FontWeight.bold, fontSize: 20, color: Colors.blueGrey),
      ),
      subtitle: Text(
        'Due Date: 12/03/2023',
        style: TextStyle(
            fontWeight: FontWeight.bold, fontSize: 20, color: Colors.blueGrey),
      ),
    );
  }
}
