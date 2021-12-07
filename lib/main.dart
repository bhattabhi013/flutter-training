import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'quiz.dart';
import 'result.dart';

// void main() {
//     runApp(
//       demoApp()
//     );
// }

void main() => runApp(DemoApp());

class DemoApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _DemoAppState();
  }
}

class _DemoAppState extends State<DemoApp> {
  var _questionIndex = 0;
  var _totalScore = 0;
  final _questions = [
    {
      "question": "what's your favourite color?",
      "answer": [
        {"text": "blue", "score": 3},
        {"text": "black", "score": 10},
        {"text": "red", "score": 5},
        {"text": "white", "score": 1}
      ]
    },
    {
      "question": "What's your favourite animal?",
      "answer": [
        {"text": "lion", "score": 10},
        {"text": "tiger", "score": 3},
        {"text": "wolf", "score": 5},
        {"text": "panda", "score": 1}
      ],
    },
    {
      "question": "What's your favourite place?",
      "answer": [
        {"text": "Delhi", "score": 10},
        {"text": "Kolkata", "score": 3},
        {"text": "Mumbai", "score": 5},
        {"text": "Chennai", "score": 1}
      ],
    }
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: _returnHeader(),
        body: _returnBody(),
      ),
    );
  }

  _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  _returnHeader() {
    return AppBar(
      title: Text('Demo App'),
    );
  }

  _returnBody() {
    return _questionIndex < _questions.length
        ? Quiz(
            printmsg: _printmsg,
            questionIndex: _questionIndex,
            questions: _questions,
          )
        : Result(
          displayMsg: 'Questions Completed', 
          totalScore: _totalScore, 
          resetQuiz: _resetQuiz,
          );
  }

  _printmsg(int score) {
    setState(() {
      print('buttonpressed');
      _totalScore += score;
      _questionIndex = _questionIndex + 1;
      print(_questionIndex);
    });
  }
}
