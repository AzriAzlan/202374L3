import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  Result(this.resultScore, this.resetHandler);
  String get resultPhrase {
    String resultText;
    if (resultScore <= 1) {
      resultText = 'Keep studying Geography!';
    } else if (resultScore <= 4) {
      resultText = 'You\'re quite good at Geography!';
    } else if (resultScore <= 5) {
      resultText = 'You are amazing at Geography!';
    } else {
      resultText = 'Keep studying Geography!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          ElevatedButton(onPressed: resetHandler, child: Text('Restart Quiz!'))
        ],
      ),
    );
  }
}
