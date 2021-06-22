

import 'package:quize_app/option.dart';

class Question {
  final String text;
  final List<Option> options;
 
  Question({
    required this.text,
    required this.options,
  });

  Question.fromMap(Map<String, dynamic> map):
    text = map['text'],
    options = map['options'].map<Option>((op)=> Option.fromMap(op)).toList();
}