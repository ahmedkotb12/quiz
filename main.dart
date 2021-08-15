import 'package:flutter/material.dart';
import 'package:flutter_application_1/quiz.dart';
// ignore: unused_import
import 'answer.dart';
// ignore: unused_import
import 'question.dart';
import 'ruselt.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatefulWidget {
  @override
  _MyappState createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
  int indexq = 0;
  int total = 0;
  int num0 = 0;
  int num1 = 0;
  int num2 = 0;

  // ignore: non_constant_identifier_names
  void _res() {
    setState(() {
      indexq = 0;
      total = 0;
    });
  }

  // ignore: non_constant_identifier_names
  void AnswerTw(int scoree) {
    if (indexq == 0) num0 = scoree;
    if (indexq == 1) num1 = scoree;
    if (indexq == 2) num2 = scoree;

    total += scoree;

    setState(() {
      indexq += 1;
    });
  }

  final _questionAnswer = [
    {
      'questions': 'what is your favourtie color ?',
      'answers': [
        {'text': 'black', 'score': 10},
        {'text': 'red', 'score': 20},
        {'text': 'blue', 'score': 30},
        {'text': 'green', 'score': 40},
      ]
    },
    {
      'questions': 'what is your favourtie animal ?',
      'answers': [
        {'text': 'dog', 'score': 10},
        {'text': 'cat', 'score': 20},
        {'text': 'lion', 'score': 30},
        {'text': 'elephant', 'score': 40},
      ]
    },
    {
      'questions': 'what is your favourtie sport ?',
      'answers': [
        {'text': 'Football', 'score': 10},
        {'text': 'tennis', 'score': 20},
        {'text': 'handball', 'score': 30},
        {'text': 'karate', 'score': 40},
      ]
    },
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black26,
          title: Text(
            'Q u i z',
            style: TextStyle(
              fontSize: 26,
            ),
          ),
        ),
        body: Container(
          child: indexq < _questionAnswer.length
              ? Quiz(_questionAnswer, indexq, AnswerTw)
              : Ruselt(_res, total),
        ),
        backgroundColor: Colors.deepPurple,
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            if (indexq == 1) total -= num0;
            if (indexq == 2) total -= num1;
            if (indexq ==3) total -= num2;
            setState(() {
              if (indexq > 0) {
                indexq--;
              }
            });
          },
          child: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          backgroundColor: Colors.white60,
        ),
      ),
    );
  }
}
