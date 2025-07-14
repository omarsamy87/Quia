import 'package:auizapplaren/core/resources/color_maneger.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class CustomInformationStudent extends StatelessWidget {
  const CustomInformationStudent({
    super.key, required this.name, required this.grade,
  });

  final String name;
  final String grade;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 20),
      margin: const EdgeInsets.only(
          left: 16,
          right: 16,
          top: 39),
      alignment: Alignment.centerLeft,
      width: double.infinity,
      decoration: BoxDecoration(
          boxShadow: const [
            BoxShadow(blurRadius:10, spreadRadius: -10, offset: Offset(0, 10)),
          ],
        color: ColorManege.kwhite,
          borderRadius: BorderRadius.circular(20)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Name : $name",
            style: GoogleFonts.baloo2(
              fontWeight: FontWeight.bold,
              fontSize: 21,
            color: ColorManege.kPraimreColor
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Text(
            grade,
            style: GoogleFonts.baloo2(
              fontWeight: FontWeight.w400,
              fontSize:21,
                color: ColorManege.kPraimreColor

            ),
          ),
        ],
      ),
    );
  }
}