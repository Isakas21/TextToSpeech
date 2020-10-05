import 'package:flutter/material.dart';
import 'package:texttospeech/screens/text_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue[100],
        appBar: AppBar(
          title: Text("Text to speech"),
        ),
        body: Container(
          child: TextScreen(),
        ),
      ),
    );
  }
}
