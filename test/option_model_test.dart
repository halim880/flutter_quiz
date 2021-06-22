
import 'package:flutter_test/flutter_test.dart';
import 'package:quize_app/option.dart';

void main() {
  test("Option can be created", (){
    Map<String, dynamic> map = {
      "text": "apple",
      "isCorrect": true
    };

    final Option option = Option.fromMap(map);

    expect("apple", option.text);
    expect(true, option.isCorrect);
  });
}