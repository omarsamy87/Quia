import 'package:auizapplaren/core/resources/ruotes_maneger.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



class QuisApp extends StatelessWidget {
  const QuisApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     routes:RuotesManeger.routes ,
      debugShowCheckedModeBanner: false,
     initialRoute: RuotesName.kQuizscren,
    );
  }
}
