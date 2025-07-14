import 'package:auizapplaren/core/resources/color_maneger.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomQuestionNumberAnswerScreen extends StatelessWidget {
  const CustomQuestionNumberAnswerScreen({
    super.key,
    required this.order, required this.isCorrect,
  });

  final int order;
  final bool isCorrect;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 58,
      height: 35,
      padding: const EdgeInsets.symmetric(
        horizontal: 10,
      ),
      alignment: Alignment.center,
      decoration:   BoxDecoration(
          boxShadow: const [
            BoxShadow(blurRadius: 10, spreadRadius: -10, offset: Offset(0, 10)),
          ],
          color:isCorrect==true? Colors.greenAccent:Colors.red,
          borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(20),
            bottomRight: Radius.circular(20),
            topLeft: Radius.circular(20),
          )),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "$order",
            style: GoogleFonts.baloo2(
                fontWeight: FontWeight.bold,
                fontSize: 21,
              color: ColorManege.kwhite),
          ),
        ],
      ),
    );
  }
}