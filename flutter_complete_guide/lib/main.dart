import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/quiz.dart';
import './question.dart';
import './answer.dart';
import './quiz.dart';
import './result.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuize() {
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
    print('answer chosen number ' + _qu estionIndex.toString());
  }

  @override
  Widget build(BuildContext context) {
    final _questions = const [
      {
        'questionText': 'What is your favorite color?',
        'answer': [
          {'text': 'Balck', 'score': 10},
          {'text': 'Red', 'score': 5},
          {'text': 'Green', 'score': 3},
          {'text': 'White', 'score': 1},
        ],
      },
      {
        'questionText': 'What is your favorite animal?',
        'answer': [
          {'text': 'Rabbit', 'score': 3},
          {'text': 'Snake', 'score': 11},
          {'text': 'Elephant', 'score': 1},
          {'text': 'Lion', 'score': 5},
        ],
      },
      {
        'questionText': 'What is your favorite song?',
        'answer': [
          {'text': 'Heal the  world', 'score': 4},
          {'text': 'Crown', 'score': 2},
          {'text': 'Evil Dead', 'score': 10},
          {'text': 'Hotel California', 'score': 6},
        ],
      },
    ];

    return MaterialApp(
      // home: Text('Hello!!'),
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: _questionIndex < _questions.length
            ? Quize(
                questions: _questions,
                quesionIndex: _questionIndex,
                answerQuestion: _answerQuestion,
              )
            : Result(_totalScore, _resetQuize),
      ),
    );
  }
}
