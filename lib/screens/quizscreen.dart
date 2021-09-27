import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/services.dart';
import 'package:language_app/widgets/quizanswers.dart';
import 'dart:async';

class Quizzscreen extends StatefulWidget {
  static String id = 'quizscreen';
  final word;
  const Quizzscreen({Key? key, this.word}) : super(key: key);
  @override
  _QuizzscreenState createState() => _QuizzscreenState();
}

class _QuizzscreenState extends State<Quizzscreen> {
  Color mycolorcone = const Color.fromRGBO(166, 217, 182, 1);
  Color mycolorctwo = const Color.fromRGBO(166, 217, 182, 1);
  Color mycolorcthree = const Color.fromRGBO(166, 217, 182, 1);
  Color mycolorcfour = const Color.fromRGBO(166, 217, 182, 1);
  int counter = 0;
  int dbinfolen = 0;
  int correctanswwer = 0;
  String question = 'question';
  String answer_a = 'answer_a';
  String answer_b = 'answer_b';
  String answer_c = 'answer_c';
  String answer_d = 'answer_d';
  String solution = 'solution';
  @override
  void initState() {
    super.initState();
    _getdatabase();
  }

  void _getdatabase() async {
    DataSnapshot snap = await FirebaseDatabase.instance
        .reference()
        .child('questions/${widget.word}/level_one')
        .once();
    final dbinfo = snap.value;
    final dbinfolens = dbinfo.length;
    print(dbinfolen);
    setState(() {
      question = dbinfo[counter]['question'];
      answer_a = dbinfo[counter]['answers']['answer_a'];
      answer_b = dbinfo[counter]['answers']['answer_b'];
      answer_c = dbinfo[counter]['answers']['answer_c'];
      answer_d = dbinfo[counter]['answers']['answer_d'];
      solution = dbinfo[counter]['solution'];
      dbinfolen = dbinfolens;
    });
  }

  //
  void getnext() {
    if (counter != dbinfolen - 1) {
      counter++;

      _getdatabase();
      mycolorcone = const Color.fromRGBO(166, 217, 182, 1);
      mycolorctwo = const Color.fromRGBO(166, 217, 182, 1);
      mycolorcthree = const Color.fromRGBO(166, 217, 182, 1);
      mycolorcfour = const Color.fromRGBO(166, 217, 182, 1);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Center(
              child: Text(widget.word),
            ),
            const SizedBox(
              height: 50,
            ),
            Container(
              height: 100,
              width: 300,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color.fromRGBO(166, 217, 182, 1),
              ),
              child: Text(question),
            ),
            const SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap: () {
                    if (solution == answer_a) {
                      setState(() {
                        mycolorcone = Colors.green;
                        Future.delayed(const Duration(milliseconds: 100), () {
                          getnext();
                          // Do something
                        });
                      });
                    } else {
                      setState(() {
                        mycolorcone = Colors.red;
                      });
                    }
                  },
                  child: Quizanswers(answer_a, mycolorcone),
                ),
                GestureDetector(
                  onTap: () {
                    if (solution == answer_b) {
                      setState(() {
                        mycolorctwo = Colors.green;
                        Future.delayed(const Duration(milliseconds: 100), () {
                          getnext();
                          // Do something
                        });
                      });
                    } else {
                      setState(() {
                        mycolorctwo = Colors.red;
                      });
                    }
                  },
                  child: Quizanswers(answer_b, mycolorctwo),
                ),
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap: () {
                    if (solution == answer_c) {
                      setState(() {
                        mycolorcthree = Colors.green;
                        Future.delayed(const Duration(milliseconds: 100), () {
                          getnext();
                          // Do something
                        });
                      });
                    } else {
                      setState(() {
                        mycolorcthree = Colors.red;
                      });
                    }
                  },
                  child: Quizanswers(answer_c, mycolorcthree),
                ),
                GestureDetector(
                  onTap: () {
                    if (solution == answer_d) {
                      setState(() {
                        mycolorcfour = Colors.green;
                        Future.delayed(const Duration(milliseconds: 100), () {
                          getnext();
                          // Do something
                        });
                      });
                    } else {
                      setState(() {
                        mycolorcfour = Colors.red;
                      });
                    }
                  },
                  child: Quizanswers(answer_d, mycolorcfour),
                ),
              ],
            ),
            GestureDetector(
              child: const SizedBox(
                height: 100,
              ),
            ),
            GestureDetector(
              onTap: () {
                getnext();
              },
              child: Container(
                height: 50,
                width: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color.fromRGBO(200, 217, 182, 1),
                ),
                child: const Text('next'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
