import 'package:flutter/material.dart';

class StatusSuccess extends StatelessWidget {
  final bool isCorrect;
  const StatusSuccess({
    Key key,
    this.isCorrect = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (isCorrect)
      return Row(
        children: [
          Icon(
            Icons.done_outline,
            color: Colors.green,
          ),
          SizedBox(width: 20),
          Text(
            "Correct",
            style: TextStyle(
              color: Colors.green,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      );
    else
      return Row(
        children: [
          Icon(
            Icons.close_outlined,
            color: Colors.red,
          ),
          SizedBox(width: 20),
          Text(
            "Not Correct",
            style: TextStyle(
              color: Colors.red,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      );
  }
}
