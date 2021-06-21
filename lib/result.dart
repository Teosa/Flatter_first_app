import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int totalScore;
  final Function restartQuiz;

  Result(this.totalScore, this.restartQuiz);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            _defineResult,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          TextButton(
            onPressed: restartQuiz,
            child: Text("Restart quiz!"),
          ),
        ],
      ),
    );
  }

  String get _defineResult {
    String result;

    if (totalScore <= 8) {
      result = "You are awesome and innocent!";
    } else if (totalScore <= 12) {
      result = "Pretty likable!";
    } else if (totalScore <= 16) {
      result = "You are ... strange...";
    } else {
      result = "You are sp bad!";
    }

    return result;
  }
}
