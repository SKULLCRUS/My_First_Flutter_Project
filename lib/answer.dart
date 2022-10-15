import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandler;
  String answerText;
  Answer(this.selectHandler, @required this.answerText);
  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        // width: MediaQuery.of(context).size.width / 4,
        // // height: MediaQuery.of(context).size.height / 20,
        // height: MediaQuery.of(context).size.height/20,

        color: Colors.blue,
        child: ElevatedButton(
            onPressed: (() {
              selectHandler();
            }),
            child: Text(answerText)));
  }
}
