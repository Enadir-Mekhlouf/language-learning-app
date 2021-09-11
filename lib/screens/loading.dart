import 'package:flutter/material.dart';
import 'package:language_app/screens/mainscreen.dart';

class Loadingpage extends StatelessWidget {
  const Loadingpage();
  static String id = 'loadingpage';
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, Mainscreen.id);
      },
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: const Color.fromRGBO(232, 255, 238, 1),
        child: Image.asset('images/loading.png'),
      ),
    );
  }
}
