import 'package:flutter/material.dart';

class Textfieldinput extends StatelessWidget {
  final String textfield;
  final Widget iconfield;
  final ValueChanged<String> onchangedfun;
  const Textfieldinput(
    this.textfield,
    this.iconfield,
    this.onchangedfun,
  );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 250,
      height: 50,
      child: TextField(
        onChanged: onchangedfun,
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
