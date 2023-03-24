import 'package:flutter/material.dart';
import 'package:flutter/semantics.dart';

class Answer extends StatelessWidget {
  final  selecthandler;
  final String answerText;
  Answer(this.selecthandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Colors.blue,
        ),
        child: Text(answerText),
        onPressed: selecthandler,
      ),
    );
  }
}
