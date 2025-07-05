import 'package:auizapplaren/core/resources/String.dart';


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
              color:const Color.fromARGB(255, 24, 2, 2) ,fontSize: 150
            ), 
               
            
    );
  }
}