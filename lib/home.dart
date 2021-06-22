import 'package:flutter/material.dart';
import 'package:quize_app/Services/question_service.dart';
import 'package:quize_app/option.dart';
import 'package:quize_app/question.dart';
import 'package:quize_app/widgets/question_widget.dart';
import 'package:quize_app/widgets/result_widget.dart';

class Home extends StatefulWidget {
  const Home({ Key? key }) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List<Question> questions = QuestionService.questions;
  int questionIndex = 0;
  int correctAnswer = 0;

  void optionSelected(bool isCorcect){
    setState(() {
      questionIndex+=1;
    });
    if(isCorcect){
      correctAnswer+=1;
    }
  }

  reStartQuiz(){
    setState(() {
      questionIndex = 0;
      correctAnswer = 0;
    });
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Quiz"),
      ),
      body: questionIndex<questions.length
      ? QuestionWidget(
        questions[questionIndex],
        optionSelected: optionSelected,
      )
      : ResultWidget(
        correctAnswer: correctAnswer, 
        onRestart: reStartQuiz,
        totalQuestion: questions.length,
      )
    );
  }
}