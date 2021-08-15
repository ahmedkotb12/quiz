import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Answer extends StatelessWidget {
  final  answer;

  var x;
 
  Answer(this.x, this.answer );
  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        
        
        
        
          // ignore: deprecated_member_use
          child: RaisedButton(
            
            
       padding: EdgeInsets.fromLTRB(27,5, 27, 5),

            color: Colors.white60,
            child: Text(
              
              this.answer,
              style: TextStyle(fontSize:30),
            ),
            onPressed: x ,
          ),
        
       );
  }
}
