import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

main () {
  // runApp receives a root widget that is going to contain all other widgets that make the aplication
  runApp(new AppQuestion());
}
//class that manages the state
// _ also makes the class private to this file
class _AppQuestionState extends State<AppQuestion> {
  var _selectedQuestion = 0;

  void _answer() {
    // setState is needed to update ui state
    setState(() {
      _selectedQuestion++;
    });
    
    print('question answered $_selectedQuestion');
  }

  @override
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
            Question(questions[_selectedQuestion]),
            Answer('Answer 1', _answer),
            Answer('Answer 2', _answer),
            Answer('Answer 3', _answer),
          ],
        ),
      ),
    );
  }
}
  
//class where the component itself is created
class AppQuestion extends StatefulWidget {
  State<AppQuestion> createState() {
    return _AppQuestionState();
  }
}