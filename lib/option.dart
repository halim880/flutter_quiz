

class Option{
  final String text;
  final bool isCorrect;

  Option({
    required this.text, 
    required this.isCorrect,
  });

  Option.fromMap(Map<String, dynamic> map):
      text = map['text'],
      isCorrect = map['isCorrect'];
}