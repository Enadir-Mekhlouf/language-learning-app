import 'package:flutter/material.dart';
import 'package:language_app/screens/login_page.dart';
import 'package:language_app/screens/signup_page.dart';
import 'package:language_app/screens/loading.dart';
import 'package:language_app/screens/mainscreen.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
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
        Loadingpage.id: (context) => const Loadingpage(),
        Mainscreen.id: (context) => const Mainscreen(),
      },
    );
  }
}
