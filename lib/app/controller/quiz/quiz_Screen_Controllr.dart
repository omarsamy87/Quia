import 'dart:async';

import 'package:auizapplaren/core/resources/const_valus.dart';
import 'package:flutter/material.dart';

class QuizScreenControllr {
List<int>listCorrectAnswer=[];
  int countQuistion=0;
  int groupValueIndex=-1;
  int questionNow=0;
late  StreamController<int> streamControllerGroupValueIndex;
late  Sink<int> inpoutDataGroupValueIndex;
late  Stream<int> aoutputeDataGroupValueIndex;
late StreamController<bool> streamControllerBotomStatys;
bool isNextActive=false;
late Sink<bool>inputDataButtStream;
  late Stream<bool> isActivoutOtputStrem;
  late TextEditingController controllerNamedTixtFiled;

  
late  StreamController<int> streamControllertime;
late  Sink<int> inpoutDatatime;
late  Stream<int> aoutputeDatatime;
int timeSecondCounterNow=0;

// ignore: non_constant_identifier_names
late  StreamController<int> StremControaellerQuestion;
late  Sink<int> inPutDatStremQuestion;
late  Stream<int> outPutStremQuestion;


late  StreamController<bool> StremControaellerAnimationStatus;
late  Sink<bool> intAnimationStatus;
late  Stream<bool> outAnimationStatus;
bool animationStatus=true;
QuizScreenControllr(){
  countQuistion=ConstValus.questionList.length;
  streamControllerGroupValueIndex=StreamController();
  inpoutDataGroupValueIndex=streamControllerGroupValueIndex.sink;
  aoutputeDataGroupValueIndex=streamControllerGroupValueIndex.stream.asBroadcastStream();
inpoutDataGroupValueIndex.add(groupValueIndex);

streamControllerBotomStatys=StreamController();
inputDataButtStream =streamControllerBotomStatys.sink;
isActivoutOtputStrem=streamControllerBotomStatys.stream.asBroadcastStream();
inputDataButtStream .add(isNextActive);

streamControllertime=StreamController();
inpoutDatatime =streamControllertime.sink;
aoutputeDatatime=streamControllertime.stream.asBroadcastStream();
inpoutDatatime .add(timeSecondCounterNow);
makeConter();


StremControaellerQuestion=StreamController();
inPutDatStremQuestion =StremControaellerQuestion.sink;
outPutStremQuestion=StremControaellerQuestion.stream.asBroadcastStream();
inPutDatStremQuestion.add(questionNow);



StremControaellerAnimationStatus=StreamController();
intAnimationStatus =StremControaellerAnimationStatus.sink;
outAnimationStatus=StremControaellerAnimationStatus.stream.asBroadcastStream();
intAnimationStatus.add(animationStatus);
}

void makeConter(){
  for (int i = 0; i < 31; i++) {
    Future.delayed(Duration(seconds: i),(){
    timeSecondCounterNow=i;
inpoutDatatime .add(timeSecondCounterNow);
if(i==30){
  nextQuestion();
}
    });
   
    
  }
}
void nextQuestion(){
   if(questionNow==listCorrectAnswer.length){
      listCorrectAnswer.add(groupValueIndex);
  }else{
    listCorrectAnswer[questionNow]=groupValueIndex;
  }
  groupValueIndex=-1;
  inpoutDataGroupValueIndex .add(groupValueIndex);
  if(questionNow>=ConstValus.questionList.length-1){
    animationStatus=false;
intAnimationStatus.add(animationStatus);

  }else{
  questionNow++;
  makeConter();
  }
inPutDatStremQuestion.add(questionNow);


}
void onTapAlItemRadio(int index){
  groupValueIndex=index;
  if(questionNow==listCorrectAnswer.length){
      listCorrectAnswer.add(groupValueIndex);
  }else{
    listCorrectAnswer[questionNow]=groupValueIndex;
  }

  for (int i in listCorrectAnswer) {
    print(i)
;  }
inpoutDataGroupValueIndex.add(groupValueIndex);
if(groupValueIndex!=-1) {
  isNextActive=true;
} else {
  isNextActive=false;
}

inputDataButtStream .add(isNextActive);

}
onDispose(){
  inpoutDataGroupValueIndex.close();
  streamControllerGroupValueIndex.close();
  inpoutDatatime.close();
  streamControllertime.close();
  inputDataButtStream.close();
  streamControllerBotomStatys.close();
  inPutDatStremQuestion.close();
  StremControaellerQuestion.close();
 intAnimationStatus.close();
  StremControaellerAnimationStatus.close();
}
}















