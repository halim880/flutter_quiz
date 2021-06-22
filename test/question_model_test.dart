import 'package:flutter_test/flutter_test.dart';
import 'package:quize_app/question.dart';

void main() {
  test("Questions can be created", (){
    Map<String, dynamic> map = {
      "text": "what is your favorite fruite ?",
      "options": [
        {"text": "apple", "isCorrect": true},
        {"text": "mango", "isCorrect": false},
        {"text": "banana", "isCorrect": false},
        {"text": "pineapple", "isCorrect": false}
      ]
    };

    final Question question = Question.fromMap(map);

    expect(question.text, "what is your favorite fruite ?");
    expect(question.options[0].text, "apple");
    expect(question.options[1].text, "mango");
    expect(question.options[0].isCorrect, true);
    expect(question.options[1].isCorrect, false);
  });
}