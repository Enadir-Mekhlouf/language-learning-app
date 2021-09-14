import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:language_app/widgets/containerquiz.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Mainscreen extends StatefulWidget {
  Mainscreen();
  static String id = 'mainscreen';
  @override
  _MainscreenState createState() => _MainscreenState();
}

class _MainscreenState extends State<Mainscreen> {
  final _auth = FirebaseAuth.instance;

  @override
  void initState() {
    super.initState();
    getcurrentuser();
  }

  void getcurrentuser() async {
    try {
      final user = await _auth.currentUser;
      if (user != null) {
        print('hello guys how are you doing ');
        print(user.email);
      }
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(232, 255, 238, 1),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: const [
                Text(
                  "A1 ",
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
                Text(
                  "Level ",
                  style: TextStyle(color: Colors.black, fontSize: 10),
                ),
              ],
            ),
            Image.asset(
              'images/icon.png',
              height: 35,
              width: 35,
            ),
          ],
        ),
      ),
      body: Container(
        color: const Color.fromRGBO(232, 255, 238, 1),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(
                  height: 35,
                ),
                const Containerquiz('alphabet'),
                const SizedBox(
                  height: 35,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Containerquiz('numbers'),
                    SizedBox(
                      width: 15,
                    ),
                    Containerquiz('basics'),
                  ],
                ),
                const SizedBox(
                  height: 35,
                ),
                const Containerquiz('alphabet'),
                const SizedBox(
                  height: 35,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Containerquiz('where'),
                    SizedBox(
                      width: 15,
                    ),
                    Containerquiz('animals'),
                    SizedBox(
                      width: 15,
                    ),
                    Containerquiz('colors'),
                  ],
                ),
                const SizedBox(
                  height: 35,
                ),
                const Containerquiz('basics'),
                const SizedBox(
                  height: 35,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Containerquiz('where'),
                    SizedBox(
                      width: 15,
                    ),
                    Containerquiz('animals'),
                    SizedBox(
                      width: 15,
                    ),
                    Containerquiz('colors'),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
