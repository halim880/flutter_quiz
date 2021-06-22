import 'package:flutter/material.dart';
import 'package:quize_app/option.dart';
class OptionsWidget extends StatelessWidget {
  final void Function(bool) onSelected;
  final Option option;
  const OptionsWidget({ Key? key, required this.onSelected, required this.option }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        hoverColor: Colors.orange[500],
        child: Container(
          width: 200.0,
          height: 50.0,
          color: Colors.orange,
          child: Center(child: Text(
            option.text,
            style: const TextStyle(color: Colors.white),
          ))
        ),
        onTap: (){
          return onSelected(option.isCorrect);
        },
      ),
    );
  }
}