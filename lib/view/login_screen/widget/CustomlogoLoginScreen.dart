import 'package:auizapplaren/core/resources/String.dart';
import 'package:auizapplaren/core/resources/color_maneger.dart';


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Customlogologinscreen extends StatelessWidget {
  const Customlogologinscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return 
         Text(TextValiu.kTextLogo,
             style: GoogleFonts.montserrat(
              color:ColorManege.kPraimreColor ,fontSize: 150
            ), 
               
            
    );
  }
}