import 'package:flutter/material.dart';

main () {
  // runApp receives a root widget that is going to contain all other widgets that make the aplication
  runApp(new AppQuestion());
}

class AppQuestion extends StatelessWidget {

  Widget build(BuildContext context) {
    return MaterialApp(
      //scaffold is used to create your app structure
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perguntas'),
        ),
        body: Text('Hello Flutter'),
      ),
    );
  }
}