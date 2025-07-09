import 'package:auizapplaren/view/QuizScreen/wdgit/CustomAppBarQuizScren.dart';
import 'package:flutter/material.dart';

class Quizscren extends StatelessWidget {
  const Quizscren({super.key});

  @override
  Widget build(BuildContext context) {
  //  String a = ModalRoute.of(context)!.settings.arguments as String;
  //  print(a);
    return Scaffold(
      backgroundColor: Color(0xffEff0F3),
 appBar: Customappbarquizscren(
  onTap: () {
     Navigator.of(context).canPop();
  },
  text: "7/10",
 ), );
  }
}