import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:english_words/english_words.dart';

void main() {
  runApp(MaterialApp(
    title: 'Flutter App',
    home: StatefulCounter(),
  ));
}

//Stateless widget
class FlutterHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final wordPair = WordPair.random();
    return Scaffold(
      appBar: AppBar(title: const Text("Flutter App Title")),
      body: Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
        Text(
          wordPair.asPascalCase,
          textAlign: TextAlign.start,
        ),
        Text(
          WordPair.random().asPascalCase,
          textAlign: TextAlign.start,
        )
      ]),
    );
  }
}

  //Stateful widget
  class StatefulCounter extends StatefulWidget {
    @override
    _StatefulCounterState createState() => _StatefulCounterState();
  }

  class _StatefulCounterState extends State<StatefulCounter> {
    int _counter = 0;

    void _increment() {
      setState(() {
        _counter++;
      });
    }

    @override
    Widget build(BuildContext context) {
      return Scaffold(
          appBar: AppBar(title: const Text("Flutter Stateful")),
          body: Container(
              child: Center(
                  child: Column(
            children: [
              ElevatedButton(onPressed: _increment, child: Text("Increment")),
              Text('Count $_counter')
            ],
          ))));
    }
  }
