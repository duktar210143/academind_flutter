import 'package:flutter/material.dart';
import 'package:flutter_practise/question.dart';

import 'answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndx;
  final Function answerQuestion;
  Quiz(
      {@required this.questions,
      @required this.answerQuestion,
      @required this.questionIndx});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        question((questions[questionIndx]['QuestionText']) as String),
        ...(questions[questionIndx]['AnswerText'] as List<String>)
            .map((answer) {
          return Answer(answerQuestion, answer);
        }).toList()
      ],
    );
  }
}
