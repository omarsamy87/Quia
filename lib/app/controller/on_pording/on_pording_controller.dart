import 'dart:async';

import 'package:auizapplaren/core/resources/ruotes_maneger.dart';
import 'package:flutter/cupertino.dart';
//    صفحةالانتقالات 
class OnPordingController {
  int  currentpositionPage=0;
late StreamController<int> streamControlleraDotIndicator;
late StreamController<int> streamControlleraStartText;

late Sink <int>inputDataDotIndicator;
late Stream <int>ouputDataDotIndicator;

late Sink <int>inputDataStartText;
late Stream <int>ouputDataStartText;

late PageController onBoardingViweConyrolr;



OnPordingController(){
  streamControlleraDotIndicator=StreamController();
  streamControlleraStartText=StreamController();

  inputDataDotIndicator = streamControlleraDotIndicator.sink;
  ouputDataDotIndicator = streamControlleraDotIndicator.stream;

  inputDataStartText = streamControlleraStartText.sink;
  ouputDataStartText = streamControlleraStartText.stream;

  inputDataDotIndicator.add(currentpositionPage);
  inputDataStartText.add(currentpositionPage);

  onBoardingViweConyrolr = PageController(initialPage: currentpositionPage);
}
// الانتقل بتاع النقط اللي تحت 
  void ontapDotIndicaton(int endexPosition){
currentpositionPage =endexPosition;
  inputDataDotIndicator.add(currentpositionPage);
  // السطر اللي تحت ده بيخلي لما تضغط علي النقط ينتقل للصفحه اللي بعدها ويعمل شوية انميشن 
   onBoardingViweConyrolr.animateToPage(currentpositionPage, duration: Duration(microseconds:400), curve: Curves.bounceInOut);


  }
  void onTapNexte( BuildContext context){
    if(currentpositionPage==2){
     gotoLoginPage(context);
    }else{
       currentpositionPage++;
    }
   onBoardingViweConyrolr.animateToPage(currentpositionPage, duration: Duration(microseconds:400), curve: Curves.bounceInOut);
  inputDataDotIndicator.add(currentpositionPage);
  inputDataStartText.add(currentpositionPage);


  }
  void gotoLoginPage( BuildContext context ){
   Navigator.pushNamedAndRemoveUntil(context, RuotesName.kLoginScreen, (route)=>false) ;
  }
  // ده بيقفل الانتقالات 
  void onDisPose(){
    inputDataDotIndicator.close();
    streamControlleraDotIndicator.close();
     inputDataStartText.close();
    streamControlleraStartText.close();
    onBoardingViweConyrolr.dispose();

  }
}