import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:language_app/screens/mainscreen.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Loadingpage extends StatefulWidget {
  static String id = 'loadingpage';

  final email;
  final password;
  const Loadingpage({Key? key, this.email, this.password}) : super(key: key);

  @override
  State<Loadingpage> createState() => _LoadingpageState();
}

class _LoadingpageState extends State<Loadingpage> {
  @override
  void initState() {
    super.initState();
    getuser();
  }

  void getuser() async {
    try {
      final UserCredential user = await FirebaseAuth.instance
          .signInWithEmailAndPassword(
              email: widget.email, password: widget.password);

      if (user != null) {
        Navigator.pushNamed(context, Mainscreen.id);
      }
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, Mainscreen.id);
      },
      child: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            color: const Color.fromRGBO(232, 255, 238, 1),
            child: Image.asset('images/loading.png'),
          ),
          SizedBox(
            child: SpinKitRotatingCircle(
              color: Colors.white,
              size: 50.0,
            ),
            height: 60,
          )
        ],
      ),
    );
  }
}
