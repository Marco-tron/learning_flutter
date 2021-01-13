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
    // a Map is a key, value duo
    final List<Map<String, Object>> questions = [
      {
        'text':'what\'s your name?',
        'answers': ['Marco','Jake','Angela', 'Fernanda']
      },
      {
        'text':'what\'s your favourite color',
        'answers': ['amarelo','azul','marrom','verde']
      }
    ];
    List<String> answers = questions[_selectedQuestion]['answers'];
    List<Widget> answersWidgets = [];
    for(var textAnswers in answers) {
      answersWidgets.add(Answer(textAnswers, _answer));
    }
    return MaterialApp(
      //scaffold is used to create your app structure
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perguntas'),
        ),
        // the column is a invisible widget used to organize others, you can use it togheter with rows to space exactly how you want yous widgets to be placed
        body: Column(
          children: [
            Question(questions[_selectedQuestion]['text']),
            // spread operator
            ...answersWidgets
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