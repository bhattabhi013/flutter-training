import 'package:first_app/question.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'answer.dart';
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
  final _questions = [
    {
      "question": "what's your favourite color?",
      "answer": [{"blue", "black", "red"}],
    },
    {
      "question": "What's your favourite animal?",
      "answer": ["lion", "tiger", "wolf"],
    },
    {
      "question": "What's your favourite place?",
      "answer": ["Delhi", "Mumbai", "Kolkata"],
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
          );
  }

  _printmsg() {
    setState(() {
      print('buttonpressed');
      _questionIndex = _questionIndex + 1;
      print(_questionIndex);
    });
  }
}
