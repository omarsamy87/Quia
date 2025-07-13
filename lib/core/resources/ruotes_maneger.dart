import 'package:auizapplaren/view/QuizScreen/Screen/QuizScren.dart';
import 'package:auizapplaren/view/answer_screens/Screens/answer_Screen.dart';
import 'package:auizapplaren/view/login_screen/screen/login_screen.dart';
import 'package:auizapplaren/view/on_bording/screen/on_pording_screen.dart';
import 'package:auizapplaren/view/splash/screen/splash_screen.dart';
import 'package:flutter/cupertino.dart';

class RuotesManeger {
  static Map<String, WidgetBuilder> 
  routes ={
    RuotesName.kSplashScreens:(context)=> SplashScreen(),
    RuotesName.kOnPordingScreen:(context)=> OnPordingScreen(),
    RuotesName.kLoginScreen:(context)=> LoginScreen(),
    RuotesName.kQuizscren:(context)=> Quizscren(),
    RuotesName.kAnswerScreen:(context)=> AnswerScreen(),



  };
}
class RuotesName{
  static const String kSplashScreens="kSplashScreens";
  static const String kOnPordingScreen="konBordingScreens";
  static const String kLoginScreen="LoginScreen";
  static const String kQuizscren="kQuizscren";
  static const String kAnswerScreen="kAnswerScreen";



}

