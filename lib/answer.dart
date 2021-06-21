import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function react;
  final String answerText;

  Answer(this.react, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.indigo),
          foregroundColor: MaterialStateProperty.all(Colors.black)
        ),
        onPressed: react,
        child: Text(answerText),
      ),
    );
  }
}
