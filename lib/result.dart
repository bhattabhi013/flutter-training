import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final String displayMsg;
  final int totalScore;
  final VoidCallback resetQuiz;

  Result(
      {required this.displayMsg,
      required this.totalScore,
      required this.resetQuiz});

  String get finalMsg {
    String resultText;
    if (totalScore > 20) {
      resultText =
          '$displayMsg \n You are an extrovert with a score: ${totalScore}';
    } else if (totalScore <= 20 && totalScore > 10) {
      resultText =
          '$displayMsg \n You are an ambivert with a score: ${totalScore}';
    } else {
      resultText =
          '$displayMsg \n You are an introvert with a score: ${totalScore}';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
            child: Text(
          finalMsg,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        )),
        FlatButton(
        onPressed: resetQuiz, 
        child: const Text('Restart quiz'),
        textColor: Colors.blue,)
      ],
    );
  }
}
