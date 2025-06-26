

import 'package:auizapplaren/core/resources/String.dart';
import 'package:auizapplaren/core/resources/color_maneger.dart';
import 'package:auizapplaren/core/resources/font_maneger.dart';
import 'package:auizapplaren/core/resources/height.dart';
import 'package:flutter/material.dart';

class CustomButtomSblashScrens extends StatelessWidget {
  const CustomButtomSblashScrens({super.key, this.onPressed});
final VoidCallback? onPressed; 
  @override
  Widget build(BuildContext context) {
    return    MaterialButton(onPressed: onPressed,
            child: Container(
              decoration: BoxDecoration(
                color: ColorManege.kwhite,
              
              borderRadius: BorderRadius.circular(70)),
              alignment: Alignment.center,
              width: double.infinity,
              height: HeightManager.h70,
              
              child:  Text(TextValiu.kTextBtoom,
              style: TextStyle(color: ColorManege.kblack,
              
              fontSize: fontSize.f21,
              ),),
            ),)
       ;
  }
}