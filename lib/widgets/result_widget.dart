import 'package:flutter/material.dart';

class ResultWidget extends StatelessWidget {
  final int correctAnswer;
  final int totalQuestion;
  final void Function() onRestart;
  const ResultWidget({ 
    Key? key , 
    required this.correctAnswer, 
    required this.onRestart,
    required this.totalQuestion
  }) : super(key: key);

  String getResult(){
    double result = correctAnswer/totalQuestion * 100;
    return result.toString() + "%";
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text("You did very well", style: TextStyle(fontSize: 22.0),),
          Text(getResult()),
          TextButton(
            onPressed: onRestart,
            child: const Text("Restart Quiz")
          )
      ],)
    );
  }
}