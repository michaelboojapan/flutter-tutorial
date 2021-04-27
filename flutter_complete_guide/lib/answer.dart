import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandler;
  final String anserText;
  Answer(this.selectHandler, this.anserText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: TextButton(
        child: Text(anserText,
            style: TextStyle(color: Color.fromARGB(220, 22, 10, 101))),
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.blue)),
        onPressed: selectHandler,
      ),
    );
  }
}
