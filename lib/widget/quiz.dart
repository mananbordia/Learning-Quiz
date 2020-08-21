import 'package:flutter/material.dart';
import 'package:quiz/widget/question.dart';

import 'answer.dart';

class Quiz extends StatelessWidget {
  final List questions;
  final int questionIndex;
  final Function answerQuestion;
  Quiz(
      {@required this.questionIndex,
      @required this.questions,
      @required this.answerQuestion});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(children: <Widget>[
        Question(questions[questionIndex]["questionText"]),
        ...(questions[questionIndex]["answerText"] as List<Map<String, Object>>)
            .map((ans) {
          return Answer(
            updateFunction: () => answerQuestion(ans["score"]),
            answer: ans["val"],
          );
        }).toList(),
      ]),
    );
  }
}
