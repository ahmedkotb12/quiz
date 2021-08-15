import 'package:flutter/material.dart';
import 'answer.dart';
import 'question.dart';

class Quiz extends StatelessWidget {
  final questionAnswer;
  final int indexq;
  // ignore: non_constant_identifier_names
  final Function AnswerTw;
  Quiz(this.questionAnswer, this.indexq, this.AnswerTw);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(questionAnswer[indexq]['questions']),
        SizedBox(
          height: 10,
        ),
        ...(questionAnswer[indexq]['answers'] as List<Map<String , Object>>).map((ans) {
          return Answer(() => AnswerTw(ans['score']), ans['text']);
         
        }).toList(),
        SizedBox(
          height: 10,
        ),
      ],
    );
  }
}
