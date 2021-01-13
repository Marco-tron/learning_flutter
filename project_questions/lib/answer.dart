import 'package:flutter/material.dart';
// basic widget to be called on the main
class Answer extends StatelessWidget {

  final String text;
  final void Function() onSelect;
  // short way to make a constructor
  Answer(this.text, this.onSelect);


  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
      child: RaisedButton(
        textColor: Colors.white,
        color: Colors.blue,
        child: Text(text),
        onPressed: onSelect,
      ),
    );
  }
}