import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String question;
  Question(this.question);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20, right: 15, left: 15),
      child: Text(
        question,
        style: TextStyle(fontSize: 18),
      ),
    );
  }
}
