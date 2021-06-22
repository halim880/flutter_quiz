import 'package:flutter/material.dart';
import 'package:quize_app/question.dart';
import 'package:quize_app/widgets/option_widget.dart';
class QuestionWidget extends StatelessWidget {
  final Question question;
  final void Function(bool) optionSelected;
  const QuestionWidget(this.question, { Key? key, required this.optionSelected }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
        Container(
          padding: EdgeInsets.all(16.0),
          child: Text(question.text,
            style: TextStyle(
              fontSize: 23.0,
              color: Colors.blueGrey
            ),
          )
        ),
        Container(
          padding: EdgeInsets.all(20.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  OptionsWidget(onSelected: optionSelected, option:question.options[0]),
                  OptionsWidget(onSelected: optionSelected, option:question.options[1]),
              ],),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  OptionsWidget(onSelected: optionSelected, option:question.options[2]),
                  OptionsWidget(onSelected: optionSelected, option:question.options[3]),
              ],),
            ],
          ),
        ),
      ]
    );
  }
}