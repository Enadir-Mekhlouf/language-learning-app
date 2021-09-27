import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:language_app/widgets/textfield.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:language_app/screens/mainscreen.dart';
import 'package:language_app/value.dart';

class Signup extends StatefulWidget {
  const Signup();
  static String id = 'signuppage';

  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  final database = FirebaseDatabase.instance.reference();
  final _auth = FirebaseAuth.instance;
  String username = '';
  String email = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    final addusers = database.reference().child('/users');
    final addcourse = database.reference().child('/course');

    return Scaffold(
      body: SafeArea(
        child: Container(
          color: const Color.fromRGBO(232, 255, 238, 1),
          padding: const EdgeInsets.only(bottom: 5.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                SvgPicture.asset(
                  'images/profile.svg',
                  height: 50,
                  width: 50,
                ),

                const Text('Signup Page'),

                Textfieldinput(
                  'username',
                  Icon(Icons.face_rounded),
                  (value) {
                    username = value;
                  },
                ),

                Textfieldinput(
                  'Email',
                  Icon(Icons.email_outlined),
                  (value) {
                    email = value;
                  },
                ),
                //
                //

                //

                // Textfieldinput(
                //   'password',
                //   Icon(Icons.password),
                //   (value) {
                //     password = value;
                //   },
                // ),
                //
                Textfieldinput(
                  'password',
                  Icon(Icons.password),
                  (value) {
                    password = value;
                  },
                ),

                //

                GestureDetector(
                  onTap: () async {
                    try {
                      final newuser =
                          await _auth.createUserWithEmailAndPassword(
                              email: email, password: password);
                      await addusers
                          .child(username)
                          .push()
                          .set({'username': username, 'email': email}).then(
                        (value) => print("added username"),
                      );
                      await addcourse
                          .child(username)
                          .push()
                          .set({'course': valuescourse}).then(
                        (value) => print("adedcourse"),
                      );
                      if (newuser != null) {
                        Navigator.pushNamed(context, Mainscreen.id);
                      }
                    } catch (e) {
                      print(e);
                    }
                  },
                  child: Container(
                    height: 50,
                    width: 120,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color.fromRGBO(255, 211, 113, 1),
                    ),
                    margin: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: const Center(child: Text('Signup')),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
