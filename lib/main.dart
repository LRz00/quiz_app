import 'package:flutter/material.dart';
import 'helper.dart';

Helper helper = Helper();
void main() => runApp(QuizApp());

class QuizApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: QuizPage(),
          ),
        ),
      ),
    );
  }
}

class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  List<Widget> points = [];


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
                helper.getQuestion(),//Pergunta
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25.0,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextButton(
              style: TextButton.styleFrom(backgroundColor: Colors.grey),
              child: const Text(
                'Verdadeiro',
                style: TextStyle(
                  color: Colors.deepPurple,
                  fontSize: 20.0,
                ),
              ),
              onPressed: () {
                setState(() {
                  bool rightAnswer = helper.getAnswer();
                  if (rightAnswer == true) {
                    //acertou
                  } else {
                    //errou
                  }
                  helper.nextQuestion();
                });
              },
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextButton(
              style: TextButton.styleFrom(backgroundColor: Colors.deepPurple),
              child: const Text(
                'Falso',
                style: TextStyle(fontSize: 20.0, color: Colors.white),
              ),
              onPressed: () {
                setState(() {
                  bool rightAnswer = helper.getAnswer();
                  if (rightAnswer == false) {
                    //acertou
                  } else {
                    //errou
                  }
                  helper.nextQuestion();
                });
              },
            ),
          ),
        ),
        Row(
          children: points,
        )
      ],
    );
  }
}