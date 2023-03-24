import 'package:flutter/material.dart';
import 'package:flutter_practise/quiz.dart';
import 'package:flutter_practise/result.dart';
import './question.dart';
import './answer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _qun = const [
    {
      'QuestionText': 'what\'s your favourite colour ',
      'AnswerText': ['blue', 'green', 'red', 'yellow']
    },
    {
      'QuestionText': 'what\'s your favourite animal',
      'AnswerText': ['zebra', 'lion', 'monkey']
    },
  ];
  var _questionIndx = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndx += 1;
      print(_questionIndx);
    });
    if (_questionIndx < _qun.length) {
      print("we have more questions");
    }
  }

  @override
  Widget build(BuildContext context) {
    var dummy = ["duktar"];
    dummy.add("hello");
    print(dummy);
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My first app'),
        ),
        body: _questionIndx < _qun.length
            ?Quiz(answerQuestion: _answerQuestion,questions: _qun,questionIndx: _questionIndx,)
            : Result(),
      ),
    );
  }
}
