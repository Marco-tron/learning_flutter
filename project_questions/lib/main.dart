import 'package:flutter/material.dart';

main () {
  // runApp receives a root widget that is going to contain all other widgets that make the aplication
  runApp(new AppQuestion());
}

class AppQuestion extends StatelessWidget {

  void answer() {
    print('question answered');
  }

  void Function() functionThetReturnsAnotherFunction() {
    return () {
      print('question answered by function');
    };
  }

  Widget build(BuildContext context) {
    final List<String> questions = [
      'what\'s your name?',
      'what\'s your favourite color'
    ];
    return MaterialApp(
      //scaffold is used to create your app structure
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perguntas'),
        ),
        // the column is a invisible widget used to organize others, you can use it togheter with rows to space exactly how you want yous widgets to be placed
        body: Column(
          children: [
            Text(questions[0]),
            RaisedButton(
              child: Text('Answer 1'),
              // to pass a function as a parameter you cant write ()
              onPressed: answer,
            ),
            Text(questions[1]),
            RaisedButton(
              child: Text('Answer 2'),
              // in this case the function called returns another function that is used as a parameter for onPressed
              onPressed: functionThetReturnsAnotherFunction(),
            ),
            Text('line 3'),
            RaisedButton(
              child: Text('Answer 3'),
              // you can also create the function you want directly on the parameter
              onPressed: () => print('answered creating the function directly on the parameter'),
            ),
            Text('Hello Flutter'),
          ],
        ),
      ),
    );
  }
}