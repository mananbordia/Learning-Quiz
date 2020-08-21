import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function updateFunction;
  final String answer;
  Answer({this.updateFunction, this.answer});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      width: double.infinity,
      child: RaisedButton(
        child:
            Text(answer, style: TextStyle(fontSize: 18, color: Colors.white)),
        onPressed: updateFunction,
        color: Colors.blue,
      ),
    );
  }
}
