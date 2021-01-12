import 'package:flutter/material.dart';

main () {
  // runApp receives a root widget that is going to contain all other widgets that make the aplication
  runApp(new AppQuestion());
}
//class that manages the state
class AppQuestionState extends State<AppQuestion> {
  var selectedQuestion = 0;

  void answer() {
    // setState is needed to update ui state
    setState(() {
      selectedQuestion++;
    });
    
    print('question answered $selectedQuestion');
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
            Text(questions[selectedQuestion]),
                RaisedButton(
                  child: Text('Answer 1'),
                  onPressed: answer,
                ),
                RaisedButton(
                  child: Text('Answer 2'),
                  onPressed: answer,
                ),
                RaisedButton(
                  child: Text('Answer 3'),
                  onPressed: answer,
                ),
          ],
        ),
      ),
    );
  }
}
  
//class where the component itself is created
class AppQuestion extends StatefulWidget {
  State<AppQuestion> createState() {
    return AppQuestionState();
  }
}