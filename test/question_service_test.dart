
import 'package:flutter_test/flutter_test.dart';
import 'package:quize_app/Services/question_service.dart';
import 'package:quize_app/option.dart';
import 'package:flutter/services.dart' as service;
import 'dart:convert';

void main() {
  test("question can be be return from json file", () async{
    var data = await QuestionService.json;
    List<Map<String, dynamic>> map = json.decode(data);

    expect(map[0]['text'], "Which is the Capital of Butan ?");
  });
}