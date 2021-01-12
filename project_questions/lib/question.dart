import 'package:flutter/material.dart';
// basic widget to be called on the main
class Question extends StatelessWidget {

  final String text;
  // short way to make a constructor
  Question(this.text);


  @override
  Widget build(BuildContext context) {
    return Text(text);
  }
}