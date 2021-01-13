import 'package:flutter/material.dart';
// basic widget to be called on the main
class Question extends StatelessWidget {

  final String text;
  // short way to make a constructor
  Question(this.text);


  @override
  Widget build(BuildContext context) {
    // a widget that lets you set margin padding background, etc... like a css class
    return Container(
      // double.infinity sets the maximum double value
      width: double.infinity,
      // there is also EdgeInsets.LTRB that lets you set different margins for each direction
      margin: EdgeInsets.all(10),
      child: Text(
        text,
        style: TextStyle(
          fontSize: 28
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}