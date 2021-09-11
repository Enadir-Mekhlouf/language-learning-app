import 'package:flutter/material.dart';

class Containerquiz extends StatefulWidget {
  final String textfieldcon;
  const Containerquiz(
    this.textfieldcon,
  );

  @override
  _ContainerquizState createState() => _ContainerquizState();
}

class _ContainerquizState extends State<Containerquiz> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: const Color.fromRGBO(166, 217, 182, 1),
      ),
      child: Container(
        alignment: Alignment.bottomCenter,
        child: Text(
          widget.textfieldcon,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 15,
          ),
        ),
      ),
    );
  }
}
