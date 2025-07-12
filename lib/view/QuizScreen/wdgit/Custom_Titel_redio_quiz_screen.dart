import 'package:auizapplaren/core/resources/color_maneger.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTitelRedioQuizScreen extends StatelessWidget {
  const CustomTitelRedioQuizScreen({super.key, required this.option, required this.onTap,  this.isSleected=false,});
 final String option;
   final GestureTapCallback onTap;
   final bool isSleected;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
      padding: EdgeInsets.symmetric(
        horizontal: 30,
        vertical: 10,
      ),
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(option,
           style: GoogleFonts.baloo2(color: ColorManege.kPraimreColor,
          
          fontSize: 20,
          fontWeight: FontWeight.bold),)
         ,
       isSleected==true?Icon(
        CupertinoIcons.checkmark_alt_circle_fill,
        color: ColorManege.kPraimreColor,
       )  
         
      :Container(
      width: 20,
      height: 20,
        decoration:ShapeDecoration(
          shape: CircleBorder(side: BorderSide(color: ColorManege.kPraimreColor,width: 1)),
          color: ColorManege.kwhite
        ),
      )
        ],
      ),
      decoration: BoxDecoration(
      color:  isSleected==true?ColorManege.kPraimreColor.withOpacity(.2)
      : ColorManege.kwhite,
        borderRadius: BorderRadius.circular(20)
      ),
      
         ),
    )
    ;
  }
}