import 'package:auizapplaren/core/resources/String.dart';
import 'package:auizapplaren/core/resources/color_maneger.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:ColorManege.kPraimreColor,
      body: Center(
        child: 
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(TextValiu.kTextLogo,
             style: GoogleFonts.montserrat(
              color:ColorManege.kwhite ,fontSize: 350
            ), 
               
            ),
            MaterialButton(onPressed: (){},
            child: Container(
              decoration: BoxDecoration(
                color: ColorManege.kwhite,
              
              borderRadius: BorderRadius.circular(70)),
              alignment: Alignment.center,
              width: double.infinity,
              height: 70,
              
              child:  Text(TextValiu.kTextBtoom,
              style: TextStyle(color: ColorManege.kblack,
              
              fontSize: 21,
              ),),
            ),)
          ],
        ),
      ),
    );
  }
}
