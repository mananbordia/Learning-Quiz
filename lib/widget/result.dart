import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final totalScore;
  final Function restart;
  Result({@required this.totalScore, @required this.restart});

  String get resultVerdict {
    if (totalScore < 16) {
      return "You are extremely bad";
    } else if (totalScore < 25) {
      return "You are average";
    } else {
      return "You are awesome";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: <Widget>[
        Text(
          resultVerdict,
          style: TextStyle(fontSize: 30),
          textAlign: TextAlign.center,
        ),
        RaisedButton(
          child: Text("Reset"),
          onPressed: restart,
        )
      ],
    ));
  }
}
