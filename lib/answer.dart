import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectionHandler;
  final String answerText;

  Answer(this.selectionHandler, String this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        child: Text(answerText),
        onPressed: selectionHandler,
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Color(0xff624fed)),
        ),
      ),
    );
  }
}
