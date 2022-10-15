import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Result extends StatelessWidget {
  // const MyWidget({super.key});
  final int resultScore;
  final Function resetHandler;
  @immutable
  Result(this.resultScore, this.resetHandler);
  String get resultPhrase {
    String resultText;
    if (resultScore < 6)
      resultText = 'You are bad';
    else if (resultScore >= 6 && resultScore < 20)
      resultText = 'You are pretty likeable';
    else
      resultText = 'You are awesome';
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),

          TextButton(
              onPressed: (() => resetHandler()), child: Text('Reset Quiz!')),
          // ElevatedButton(
          //     onPressed: (() => resetHandler()),
          //     child: Text(
          //       'Reset Quiz!',
          //     )),
        ],
      ),
    );
  }
}
