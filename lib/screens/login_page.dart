import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Loginscreen extends StatefulWidget {
  const Loginscreen();
  static String id = 'loginpage';

  @override
  _LoginscreenState createState() => _LoginscreenState();
}

class _LoginscreenState extends State<Loginscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.only(bottom: 5.0),
          color: const Color.fromRGBO(232, 255, 238, 1),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SvgPicture.asset(
                  'images/Studying-bro.svg',
                  height: 440,
                  width: 440,
                ),
                Column(
                  children: [
                    Container(
                      width: 250,
                      height: 50,
                      child: TextField(
                        decoration: InputDecoration(
                          prefixIcon: const Icon(Icons.email_outlined),
                          filled: true,
                          fillColor: Colors.grey[100],
                          labelText: 'Email adress',
                          border: const OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(10.0),
                            ),
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 19.0,
                    ),
                    Container(
                      width: 250,
                      height: 50,
                      child: TextField(
                        decoration: InputDecoration(
                          prefixIcon: const Icon(Icons.vpn_key_outlined),
                          filled: true,
                          fillColor: Colors.grey[100],
                          labelText: 'Email adress',
                          border: const OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(10.0),
                            ),
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 19.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () {
                            print('f');
                          },
                          child: Container(
                            height: 50,
                            width: 120,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color.fromRGBO(255, 211, 113, 1),
                            ),
                            margin:
                                const EdgeInsets.symmetric(horizontal: 10.0),
                            child: const Center(child: Text('Signup')),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            height: 50,
                            width: 120,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color.fromRGBO(255, 211, 113, 1),
                            ),
                            margin:
                                const EdgeInsets.symmetric(horizontal: 10.0),
                            child: const Center(child: Text('Log in')),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 19,
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.grey[200],
                        ),
                        height: 50,
                        width: 288,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Icon(Icons.mail),
                            Text('Connect with your Gmail Account'),
                          ],
                        ),
                      ),
                    ),
                    //
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
