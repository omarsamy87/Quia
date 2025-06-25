import 'dart:ffi';

import 'package:auizapplaren/core/resources/ruotes_maneger.dart';
import 'package:auizapplaren/view/on_bording/screen/on_pording_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SplashScreens {
  static void gotoonBordingPaeg (BuildContext context){
    
          Navigator.pushNamed(context,RuotesName.kOnPordingScreen)
      ;
  }
}