import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Ruselt extends StatelessWidget {
  var y;
  final int resScore;
  Ruselt(this.y, this.resScore);
  String get resultPhrase {
    // ignore: unused_local_variable

    String text;
    if (resScore >= 70) {
      text = 'awesome';
    } else if (resScore >= 40) {
      text = 'not bad';
    } else {
      text = 'bad ';
    }
    return text;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
           '$resScore',
            style: TextStyle(fontSize: 35 , ),
         textAlign: TextAlign.center, ),
         
           
          Text(
           resultPhrase,
            style: TextStyle(fontSize: 35 ),
          textAlign: TextAlign.center, ),
        
      
          // ignore: deprecated_member_use
          FlatButton(
              onPressed: y,
              child: Text(
                'Restart The App',
                style: TextStyle(color: Colors.white, fontSize: 30),
               
              )),
        ],
      ),
    );
  }
}
