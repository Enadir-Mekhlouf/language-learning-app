import 'package:flutter/material.dart';
import 'package:language_app/screens/login_page.dart';
import 'package:language_app/screens/signup_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp();

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //remove debug banner
      debugShowCheckedModeBanner: false,
      initialRoute: Loginscreen.id,
      routes: {
        Loginscreen.id: (context) => const Loginscreen(),
        Signup.id: (context) => const Signup(),
      },
    );
  }
}
