import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Question extends StatelessWidget {
final  quesn;
 Question (this.quesn);
  @override
  Widget build(BuildContext context) {
   
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(20),
          child :  Text(
           this.quesn,
            style: TextStyle(fontSize: 27),
            textAlign: TextAlign.center,
          ),
      
    );
  }
}
