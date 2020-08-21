import 'package:flutter/material.dart';
import 'package:quiz/widget/answer.dart';
import 'package:quiz/widget/question.dart';
import 'package:quiz/widget/quiz.dart';
import 'package:quiz/widget/result.dart';

void main() => runApp(QuizApp());

class QuizApp extends StatefulWidget {
  @override
  _QuizAppState createState() => _QuizAppState();
}

class _QuizAppState extends State<QuizApp> {
  var questions = [
    {
      "questionText": "Which one of these fruits you like the most",
      "answerText": [
        {"val": "Apple", "score": 8},
        {"val": "Mango", "score": 10},
        {"val": "Banana", "score": 5}
      ]
    },
    {
      "questionText": "Which one of these actors you like the most",
      "answerText": [
        {"val": "Shahrukh Khan", "score": 8},
        {"val": "Leonardo DiCaprio", "score": 10},
        {"val": "Salman Khan", "score": 5}
      ]
    },
    {
      "questionText": "Which one of these language you like the most",
      "answerText": [
        {"val": "Hindi", "score": 6},
        {"val": "English", "score": 7},
        {"val": "C++", "score": 10},
        {"val": "JAVA", "score": 3}
      ]
    },
  ];
  int totalScore = 0;
  var questionIndex = 0;
  bool qListExhausted = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Quiz"),
          centerTitle: true,
        ),
        body: qListExhausted
            ? Result(
                totalScore: totalScore,
                restart: restart,
              )
            : Quiz(
                answerQuestion: answerQuestion,
                questionIndex: questionIndex,
                questions: questions,
              ),
      ),
    );
  }

  void answerQuestion(int score) {
    totalScore += score;
    setState(() {
      questionIndex += 1;
      if (questionIndex == questions.length) {
        qListExhausted = true;
        questionIndex = 0;
      }
    });
  }

  void restart() {
    setState(() {
      qListExhausted = false;
      totalScore = 0;
    });
  }
}
