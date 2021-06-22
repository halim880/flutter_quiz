

import 'package:quize_app/option.dart';
import 'package:quize_app/question.dart';

List<Question> questions = [
  Question(
    text: "Who is the presedent of USA ?", 
    options: [
      Option(text: "Jo baiden", isCorrect: true),
      Option(text: "Donald Trumph", isCorrect: true),
      Option(text: "Abraham linkon", isCorrect: true),
      Option(text: "Hilari klinton", isCorrect: true),
    ]
  ),
  Question(
    text: "What is the full form of RAM ?", 
    options: [
      Option(text: "Random Access Memory", isCorrect: true),
      Option(text: "Random Alfa Memory", isCorrect: false),
      Option(text: "Random Access Mutant", isCorrect: false),
      Option(text: "All of them are incorrect", isCorrect: false),
    ]
  ),
];