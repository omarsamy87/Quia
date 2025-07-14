import 'package:auizapplaren/core/resources/color_maneger.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class CustomStatusAnswerAnswersScreen extends StatelessWidget {
  const CustomStatusAnswerAnswersScreen({
    super.key,
    required this.isCorrect,
    required this.question,
    required this.answer,
    required this.correctAnswer,
  });

  final bool isCorrect;
  final String question;
  final String answer;
  final String correctAnswer;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.only(
          left: 7,
        ),
        alignment: Alignment.center,
        // width: double.infinity,
        decoration: BoxDecoration(
            boxShadow: const [
              BoxShadow(
                  blurRadius: 10, spreadRadius: -10, offset: Offset(0, 10)),
            ],
            color: isCorrect == true ? Colors.greenAccent: Colors.red,
            borderRadius: const BorderRadius.only(
              topRight: Radius.circular(20),
              bottomRight: Radius.circular(20),
              bottomLeft: Radius.circular(20),
            )),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 8,
                horizontal: 12,
              ),
              child: Text(
                textAlign: TextAlign.center,
                question,
                style: GoogleFonts.baloo2(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: ColorManege.kwhite),
              ),
            ),
            const Divider(),
            Container(
              margin: const EdgeInsets.symmetric(
                  horizontal:20,
                  vertical: 16),
              padding: const EdgeInsets.symmetric(
                  vertical: 6,
                  horizontal:12),
              alignment: Alignment.center,
              // width: double.infinity,
              decoration: const BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 10,
                        spreadRadius: -10,
                        offset: Offset(0, 10)),
                  ],
                  color: ColorManege.kwhite,
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              child: Row(
                children: [
                  Icon(
                    isCorrect == true
                        ? CupertinoIcons.checkmark_alt_circle_fill
                        : Icons.clear,
                 color: ColorManege.kPraimreColor
                  ),
                  const SizedBox(
                    width: 4,
                  ),
                  Expanded(
                      child: Text(
                    answer,
                    textAlign: TextAlign.center,
                    style: GoogleFonts.baloo2(
                        fontSize: 18,
                    color: ColorManege.kPraimreColor,
                        fontWeight: FontWeight.w700),
                  ))
                ],
              ),
            ),
            if (isCorrect == false)
              Container(
                margin: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical:16),
                padding: const EdgeInsets.symmetric(
                    vertical: 6,
                    horizontal: 12),
                alignment: Alignment.center,
                // width: double.infinity,
                decoration: const BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 10,
                          spreadRadius: -10,
                          offset: Offset(0, 10)),
                    ],
                   color: ColorManege.kwhite,
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                child: Row(
                  children: [
                    const Icon(
                      CupertinoIcons.checkmark_alt_circle_fill,
                     color: ColorManege.kPraimreColor,
                    ),
                    const SizedBox(
                      width: 4,
                    ),
                    Expanded(
                        child: Text(
                      "$correctAnswer",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.baloo2(
                          fontSize: 18,
                          color: ColorManege.kwhite,
                          fontWeight: FontWeight.w700),
                    ))
                  ],
                ),
              ),
          ],
        ),
      ),
    );
  }
}