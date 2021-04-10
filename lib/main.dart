import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'What\'s the capital city of China?',
      'answers': [
        {'text': 'Wuhan', 'score': 0},
        {'text': 'Guangzhou', 'score': 0},
        {'text': 'Beijing', 'score': 1},
        {'text': 'Shanghai', 'score': 0}
      ],
    },
    {
      'questionText': 'What\'s the capital city of India?',
      'answers': [
        {'text': 'New Delhi', 'score': 1},
        {'text': 'Kolkata', 'score': 0},
        {'text': 'Jaipur', 'score': 0},
        {'text': 'Mumbai', 'score': 0}
      ],
    },
    {
      'questionText': 'What\'s the capital city of Jamaica?',
      'answers': [
        {'text': 'Portmore', 'score': 0},
        {'text': 'Montego Bay', 'score': 0},
        {'text': 'Kingston', 'score': 1},
        {'text': 'Ocho Rios', 'score': 0}
      ],
    },
    {
      'questionText': 'What\'s the capital city of Turkey?',
      'answers': [
        {'text': 'Izmir', 'score': 0},
        {'text': 'Antalya', 'score': 0},
        {'text': 'Istanbul', 'score': 0},
        {'text': 'Ankara', 'score': 1}
      ],
    },
    {
      'questionText': 'What\'s the capital city of Bangladesh?',
      'answers': [
        {'text': 'Dhaka', 'score': 1},
        {'text': 'Chattogram', 'score': 0},
        {'text': 'Sylhet', 'score': 0},
        {'text': 'Khulna', 'score': 0}
      ],
    },
  ];

  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;

    setState(() {
      _questionIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xffdaed4f),
          title: Text('Capital City Quiz'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
