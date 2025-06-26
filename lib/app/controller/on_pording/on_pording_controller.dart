import 'dart:async';

class OnPordingController {
  int  currentpositionPage=0;
late StreamController<int> streamController;
late Sink <int>inputData;
late Stream <int>ouputData;

OnPordingController(){
  streamController=StreamController();
  inputData = streamController.sink;
  ouputData = streamController.stream;
  inputData.add(currentpositionPage);
}
  void ontapDotIndicaton(int endexPosition){
currentpositionPage =endexPosition;
  inputData.add(currentpositionPage);


  }
}