import 'package:flutter/material.dart';

class Quizanswers extends StatefulWidget {
  final String answer;
  final Color color;
  const Quizanswers(this.answer, this.color);

  @override
  _QuizanswersState createState() => _QuizanswersState();
}

class _QuizanswersState extends State<Quizanswers> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 150,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: widget.color,
      ),
      child: Text(widget.answer),
    );
  }
}
