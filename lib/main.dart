import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

void main() => runApp(MainWidget());

class MainWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MainWidgetState();
  }
}

class _MainWidgetState extends State<MainWidget> {
  final questions = const [
    {
      "questionText": "What is your favorite color?",
      "answers": [
        {"text": "Black", "score": 10},
        {"text": "Red", "score": 6},
        {"text": "Blue", "score": 3},
        {"text": "White", "score": 1}
      ]
    },
    {
      "questionText": "What is your favorite animal?",
      "answers": [
        {"text": "Cat", "score": 10},
        {"text": "Dog", "score": 6},
        {"text": "Horse", "score": 3},
        {"text": "Parrot", "score": 1}
      ]
    },
    {
      "questionText": "What is your favorite time of year?",
      "answers": [
        {"text": "Winter", "score": 10},
        {"text": "Fall", "score": 6},
        {"text": "Spring", "score": 3},
        {"text": "Summer", "score": 1}
      ]
    }
  ];
  var _questionIndex = 0;
  var _totalScore = 0;

  void _restartQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _doAnswer(int score) {
    _totalScore += score;

    if (_questionIndex < questions.length) {
      setState(() {
        _questionIndex++;
      });
    }
  }

  Widget defineBody() {
    return _questionIndex < questions.length
        ? Quiz(questions, _doAnswer, _questionIndex)
        : Result(_totalScore, _restartQuiz);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text("My First App"),
      ),
      body: defineBody(),
    ));
  }
}
