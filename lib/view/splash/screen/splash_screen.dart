import 'package:auizapplaren/app/controller/splash/splash_controlr_screens.dart';
import 'package:auizapplaren/core/resources/String.dart';
import 'package:auizapplaren/core/resources/color_maneger.dart';
import 'package:auizapplaren/core/resources/font_maneger.dart';
import 'package:auizapplaren/core/resources/height.dart';
import 'package:auizapplaren/view/on_bording/screen/on_pording_screen.dart';
import 'package:auizapplaren/view/splash/widgit/custom_buttom_sblash_screns.dart';
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
        CustomButtomSblashScrens(onPressed: () {
          SplashScreens.gotoonBordingPaeg(context);
          
        },)
          ],
        ),
      ),
    );
  }
}
