import 'package:first_app/question.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'answer.dart';

// void main() {
//     runApp(
//       demoApp()
//     );
// }

void main() => runApp(DemoApp());

class DemoApp extends StatefulWidget {
  var s = _DemoAppState();
  @override
  State<StatefulWidget> createState() {
    return _DemoAppState();
  }
}

class _DemoAppState extends State<DemoApp> {
  var _questionIndex = 0;
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
    const questions = [
      {
        "question": "what's your favourite color?",
        "answer": ["blue", "black", "red"],
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
    return Column(
      children: [
        Questions(
          questions[_questionIndex]['question'].toString(),
        ),
        // spread operator is added to make the belowlist a part of the current list <children(ln 57)>
        ...(questions[_questionIndex]['answer'] as List<String>).map((answer) {
            return  Answers(
          _printmsg, answer
        );
         })
          .toList(),
        // ElevatedButton(onPressed: printmsg,
        // child: Text('yep'),
        // ),
        // ),
      ],
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
