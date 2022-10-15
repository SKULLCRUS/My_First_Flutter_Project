import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:quiz_app/answer.dart';
import 'package:quiz_app/result%20.dart';

import './quiz.dart';
import './result .dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var questionIndex = 0;
  int totalScore = 0;
  var questions = [
    {
      'questionText': "What is your favourite Animal?",
      'answerText': [
        {'text': 'Rabbit', 'score': 5},
        {'text': 'Lion', 'score': 10},
        {'text': 'Dog', 'score': 7},
        {'text': 'Bear', 'score': 1}
      ],
    },
    {
      'questionText': "What is your favourite Colour?",
      'answerText': [
        {'text': 'Black', 'score': 1},
        {'text': 'White', 'score': 10},
        {'text': 'Red', 'score': 3},
        {'text': 'Green', 'score': 7}
      ],
    },
    {
      'questionText': "What is your favourite Car Brand?",
      'answerText': [
        {'text': 'BMW', 'score': 7},
        {'text': 'Rolls Royce', 'score': 10},
        {'text': 'Audi', 'score': 5},
        {'text': 'Lamborghini', 'score': 2}
      ],
    },
  ];
  void reset() {
    setState(() {
      questionIndex = 0;
      totalScore = 0;
    });
  }

  void answerQuestion(int score) {
    //print("Answer Chosen!");
    totalScore = totalScore + score;
    setState(() {
      questionIndex = questionIndex + 1;
    });
  }

  // @override
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();
  // }

  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text("My First App"),
      ),
      body: questionIndex < questions.length
          ? Quiz(
              questionIndex: questionIndex,
              answerQuestionfunction: answerQuestion,
              questions: questions)
          // Quiz('questionIndex':questionIndex,'answerQuestion':answerQuestion,'questions':questions,)
          : Result(totalScore, reset),
    ));
  }
}
