import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.lightGreen,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('List Of Words'),
        ),
        body: Center(
          child: new RandomWords(),
        ),
      ),
    );
  }
}

class RandomWords extends StatefulWidget{

  @override
  RandomWordsState createState() {
    return new RandomWordsState();
  }

}

class RandomWordsState extends State<RandomWords>{
  @override
  Widget build(BuildContext context) {
    final _wordPair = WordPair.random();
    return Text(_wordPair.asPascalCase);
  }

}

