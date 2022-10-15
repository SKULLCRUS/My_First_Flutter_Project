// import 'package:flutter/src/widgets/container.dart';
// import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  // const MyWidget({super.key});
  int questionIndex;
  final Function answerQuestionfunction;
  final List<Map<String, Object>> questions;

  Quiz(
      {required this.questionIndex,
      required this.answerQuestionfunction,
      required this.questions});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        question(
          '${questions[questionIndex]["questionText"]}',
        ),
        // Expanded(
        //   // height: 1000,
        //   child: ListView.builder(
        //     itemBuilder: ((context, index) {
        //       return Column(
        //         children: [
        //           // Text('${questions[index]}'),
        //           Answer(answerQuestion),
        //         ],
        //       );
        //     }),
        //     itemCount: 3,
        //   ),
        // ),

        // Answer(answerQuestion),
        // Answer(answerQuestion),
        // Answer(answerQuestion),
        ...(questions[questionIndex]['answerText'] as List<Map<String, Object>>)
            .map((answers) {
          return Answer(() => answerQuestionfunction(answers['score']),
              '${answers['text']}');
        }).toList()
      ],
    );
  }
}
