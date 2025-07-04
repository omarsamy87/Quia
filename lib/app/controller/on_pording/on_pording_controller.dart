import 'dart:async';

import 'package:flutter/cupertino.dart';
//    صفحةالانتقالات 
class OnPordingController {
  int  currentpositionPage=0;
late StreamController<int> streamController;
late Sink <int>inputData;
late Stream <int>ouputData;
late PageController onBoardingViweConyrolr;

OnPordingController(){
  streamController=StreamController();
  inputData = streamController.sink;
  ouputData = streamController.stream;
  inputData.add(currentpositionPage);
  onBoardingViweConyrolr = PageController(initialPage: currentpositionPage);
}
// الانتقل بتاع النقط اللي تحت 
  void ontapDotIndicaton(int endexPosition){
currentpositionPage =endexPosition;
  inputData.add(currentpositionPage);
  // السطر اللي تحت ده بيخلي لما تضغط علي النقط ينتقل للصفحه اللي بعدها ويعمل شوية انميشن 
   onBoardingViweConyrolr.animateToPage(currentpositionPage, duration: Duration(microseconds:400), curve: Curves.bounceInOut);


  }
  void onTapNexte(){
    if(currentpositionPage==2){
      currentpositionPage=0;
    }else{
       currentpositionPage++;
    }
   onBoardingViweConyrolr.animateToPage(currentpositionPage, duration: Duration(microseconds:400), curve: Curves.bounceInOut);
  inputData.add(currentpositionPage);

  }
  // ده بيقفل الانتقالات 
  void onDisPose(){
    inputData.close();
    streamController.close();
    onBoardingViweConyrolr.dispose();

  }
}