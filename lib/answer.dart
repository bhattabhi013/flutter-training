import 'package:flutter/material.dart';

class Answers extends StatelessWidget {
  final VoidCallback handleOnCLick;
  final String questionText;
  const Answers(this.handleOnCLick, this.questionText);
  
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: 
      RaisedButton(
        child: Text(questionText),
        textColor: Colors.blue,
        onPressed: handleOnCLick, 
        color: Colors.white,
        padding: const EdgeInsets.all(10),
        ),
    );
  }
}