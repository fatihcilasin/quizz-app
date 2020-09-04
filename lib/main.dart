import 'package:flutter/material.dart';
import 'question.dart';

void main() => runApp(Quizz());

class Quizz extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [Colors.grey.shade900, Colors.grey.shade700]
              )
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: QuizzPage(),
            ),
          ),
        ),
      ),
    );
  }
}

class QuizzPage extends StatefulWidget {
  @override
  _QuizzPageState createState() => _QuizzPageState();
}

class _QuizzPageState extends State<QuizzPage> {
  List<Icon> scoreKeeper = [];
  List<Question> questions = [
    Question(q: 'A RIVER is bigger than a STREAM.', a: true),
    Question(q: 'There are one thousand years in a CENTURY.', a: false),
    Question(q: 'FOUNDED is the past tense of FOUND.', a: true),
    Question(q: 'ANSWER can be used as a noun and a verb.', a: true),
    Question(q: 'SCARLET is brilliant red colour.', a: true),
    Question(q: 'USED TO DOING and USED TO TO mean the same thing.', a: false),
    Question(q: 'You can use IMPROVE as a noun and as a verb.', a: false),
    Question(q: 'DOZEN is equivalent to 20.', a: false),
  ];

  int questionIndex = 0;

  void _reset(){
    setState(() {
      questionIndex = 0;
      scoreKeeper.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          flex: 5,
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                questions.length > questionIndex
                    ? questions[questionIndex].text
                    : 'End of Questions :(',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 25.0, color: Colors.white),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(14.0),
            child: FlatButton(
              textColor: Colors.white,
              color: Colors.blue,
              child: Text(
                'Reset Questions',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0
                )
              ),
              onPressed: () {
                print('Reset Questions button press action.');
                _reset();
              },
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(14.0),
            child: FlatButton(
              textColor: Colors.white,
              color: Colors.green,
              child: Text(
                'True',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
              onPressed: () {
                print('True button press action.');
                if (questions.length <= questionIndex) return;

                bool correctAnswer = questions[questionIndex].answer;
                if (correctAnswer == true) {
                  setState(() {
                    scoreKeeper.add(Icon(Icons.check, color: Colors.green));
                    questionIndex++;
                  });
                } else {
                  setState(() {
                    scoreKeeper.add(Icon(Icons.close, color: Colors.red));
                    questionIndex++;
                  });
                }
              },
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(14.0),
            child: FlatButton(
              textColor: Colors.white,
              color: Colors.red,
              child: Text(
                'False',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
              onPressed: () {
                print('False button press action.');
                if (questions.length <= questionIndex) return;

                bool correctAnswer = questions[questionIndex].answer;
                if (correctAnswer == false) {
                  setState(() {
                    scoreKeeper.add(Icon(Icons.check, color: Colors.green));
                    questionIndex++;
                  });
                } else {
                  setState(() {
                    scoreKeeper.add(Icon(Icons.close, color: Colors.red));
                    questionIndex++;
                  });
                }
              },
            ),
          ),
        ),
        Row(
          children: scoreKeeper,
        )
      ],
    );
  }
}
