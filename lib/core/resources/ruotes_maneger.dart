import 'package:auizapplaren/view/on_bording/screen/on_pording_screen.dart';
import 'package:auizapplaren/view/splash/screen/splash_screen.dart';
import 'package:flutter/cupertino.dart';

class RuotesManeger {
  static Map<String, WidgetBuilder> 
  routes ={
    RuotesName.kSplashScreens:(context)=> SplashScreen(),
    RuotesName.kOnPordingScreen:(context)=> OnPordingScreen(),

  };
}
class RuotesName{
  static const String kSplashScreens="kSplashScreens";
  static const String kOnPordingScreen="konBordingScreens";
}