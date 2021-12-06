import 'package:flutter/material.dart';

import 'answer.dart';
import 'question.dart';

class Quiz extends StatelessWidget {
  final int questionIndex;
  final  questions;
  final VoidCallback printmsg;

  Quiz({required this.questionIndex, required this.questions, required this.printmsg});

  @override
  Widget build(BuildContext context) {
    return Column(
            children: [
              Questions(
                (questions[questionIndex]['question'] as String),
              ),
              // spread operator is added to make the belowlist a part of the current list <children(ln 57)>
              ...(questions[questionIndex]['answer'] as List<String>)
                  .map((answer) {
                return Answers(printmsg, answer);
              }).toList(),
              // ElevatedButton(onPressed: printmsg,
              // child: Text('yep'),
              // ),
              // ),
            ],
          );
  }
}