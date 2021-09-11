import 'package:flutter/material.dart';

class Textfieldinput extends StatelessWidget {
  final String textfield;
  final Widget iconfield;
  const Textfieldinput(
    this.textfield,
    this.iconfield,
  );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 250,
      height: 50,
      child: TextField(
        decoration: InputDecoration(
          prefixIcon: iconfield,
          filled: true,
          fillColor: Colors.grey[100],
          labelText: textfield,
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(10.0),
            ),
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }
}
