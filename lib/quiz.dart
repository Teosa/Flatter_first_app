import 'package:flutter/material.dart';

import './answer.dart';
import './question.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final Function _doAnswer;
  final int _questionIndex;

  Quiz(this.questions, this._doAnswer, this._questionIndex);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Question(
          questions.elementAt(_questionIndex)["questionText"],
        ),
        ...(questions.elementAt(_questionIndex)["answers"]
                as List<Map<String, Object>>)
            .map((answer) =>
                Answer(() => _doAnswer(answer["score"] as int), answer["text"]))
      ],
    );
  }
}
