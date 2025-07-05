import 'package:auizapplaren/core/resources/color_maneger.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Custombotomstarloginscren extends StatelessWidget {
  const Custombotomstarloginscren({
    super.key,
     required this.onPressed
     });
final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return      MaterialButton(
          padding: EdgeInsets.all(0),
            onPressed: onPressed,
          child: Container(
            alignment: AlignmentDirectional.center,
            height: 59,
            width: double.infinity,
            decoration: BoxDecoration(
                color: ColorManege.kPraimreColor,
                borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
            child: Text("cvbnm,." ,style: TextStyle(
              fontSize: 24,
              color: ColorManege.kwhite),)),
          
          )
           ;
  }
}