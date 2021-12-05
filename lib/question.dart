import 'package:flutter/material.dart';

class Questions extends StatelessWidget {
  final String questionText;

  Questions(this.questionText);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Text(
      questionText, 
      style: TextStyle(
        fontSize: 18,
        ),
        textAlign: TextAlign.center,
      ), 
    );
  }
}