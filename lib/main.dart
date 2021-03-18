import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:english_words/english_words.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'Flutter App',
      home: FlutterHome(),
    )

  );
}

class FlutterHome extends StatelessWidget{
  @override
  Widget build(BuildContext context ) {
    final wordPair = WordPair.random();
      return Scaffold(
        appBar: AppBar(
          title: const Text("Flutter App Title")
        ),
        body:Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children:[
            Text(wordPair.asPascalCase,textAlign: TextAlign.start,),
            Text(WordPair.random().asPascalCase,textAlign: TextAlign.start,)
          ]
        ),
    );
  }
}


