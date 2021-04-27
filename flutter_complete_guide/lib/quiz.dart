import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Quize extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final Function answerQuestion;
  final int quesionIndex;

  Quize(
      {@required this.questions,
      @required this.quesionIndex,
      @required this.answerQuestion});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(questions[quesionIndex]['questionText']),
        ...(questions[quesionIndex]['answer'] as List<Map<String, Object>>)
            .map((answer) {
          return Answer(() => answerQuestion(answer['score']), answer['text']);
        })
      ],
    );
  }
}
