
import 'package:quize_app/option.dart';
import 'package:quize_app/question.dart';

class QuestionService{

  static final List<Question> questions = [
    Question(
      text: "Who is the presedent of USA ?", 
      options: [
        Option(text: "Jo baiden", isCorrect: true),
        Option(text: "Donald Trumph", isCorrect: false),
        Option(text: "Abraham linkon", isCorrect: false),
        Option(text: "Hilari klinton", isCorrect: false),
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
    Question(
      text: "Which is the Capital of Butan ?", 
      options: [
        Option(text: "Kualalampur", isCorrect: false),
        Option(text: "Thimbo", isCorrect: true),
        Option(text: "Dhaka", isCorrect: false),
        Option(text: "Panjab", isCorrect: false),
      ]
    ),
    Question(
      text: "What is the full form of Wifi ?", 
      options: [
        Option(text: "Wireless fidality", isCorrect: true),
        Option(text: "Wimax fire", isCorrect: false),
        Option(text: "None of them", isCorrect: false),
        Option(text: "Both of them", isCorrect: false),
      ]
    ),
    Question(
      text: "which is the smallest bird ?", 
      options: [
        Option(text: "Hamming bard", isCorrect: true),
        Option(text: "Sparrow", isCorrect: false),
        Option(text: "Kokil", isCorrect: false),
        Option(text: "Finge", isCorrect: false),
      ]
    ),
  ];
}
