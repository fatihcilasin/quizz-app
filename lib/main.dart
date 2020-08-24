import 'package:flutter/material.dart';

void main() => runApp(Quizz());

class Quizz extends StatelessWidget{
  @override

  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey.shade900,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
          ),
        ),
      ),
    );
  }
}