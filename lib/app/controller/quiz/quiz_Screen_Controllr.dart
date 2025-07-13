import 'dart:async';
import 'package:auizapplaren/core/resources/String.dart';
import 'package:auizapplaren/core/resources/const_valus.dart';
import 'package:auizapplaren/core/resources/ruotes_maneger.dart';
import 'package:flutter/material.dart';

class QuizScreenControllr {
  List<int> listCorrectAnswer = [];
  int countQuistion = 0;
  int groupValueIndex = -1;
  int questionNow = 0;

  late StreamController<int> streamControllerGroupValueIndex;
  late Sink<int> inpoutDataGroupValueIndex;
  late Stream<int> aoutputeDataGroupValueIndex;

  late StreamController<bool> streamControllerBotomStatys;
  bool isNextActive = false;
  late Sink<bool> inputDataButtStream;
  late Stream<bool> isActivoutOtputStrem;

  late TextEditingController controllerNamedTixtFiled;

  late StreamController<double> streamControllertime;
  late Sink<double> inpoutDatatime;
  late Stream<double> aoutputeDatatime;
  int timeSecondCounterNow = 0;

  late StreamController<int> StremControaellerQuestion;
  late Sink<int> inPutDatStremQuestion;
  late Stream<int> outPutStremQuestion;

  late StreamController<double> StremControaellerAnimationProgress;
  late Sink<double> intAnimationProgress;
  late Stream<double> outAnimationProgress;

  late AnimationController animationController;
  double animationprogresprcent = 0.0;
  Tween<double> tween = Tween(begin: 0.0, end: 1.0);
late BuildContext _context;
String _name ="";



  late StreamController<String> streamControllerQuestionsNow;
   late Sink <String> inpoutQuestionsNow;
  late Stream<String> aoutputeQuestionsNow;


  QuizScreenControllr(SingleTickerProviderStateMixin vsync,BuildContext context) {
    _context=context;
    animationController = AnimationController(
      vsync: vsync,
      duration: Duration(seconds: 1),
    );

    countQuistion = ConstValus.questionList.length;

    streamControllerGroupValueIndex = StreamController();
    inpoutDataGroupValueIndex = streamControllerGroupValueIndex.sink;
    aoutputeDataGroupValueIndex =
        streamControllerGroupValueIndex.stream.asBroadcastStream();
    inpoutDataGroupValueIndex.add(groupValueIndex);

    streamControllerBotomStatys = StreamController();
    inputDataButtStream = streamControllerBotomStatys.sink;
    isActivoutOtputStrem =
        streamControllerBotomStatys.stream.asBroadcastStream();
    inputDataButtStream.add(isNextActive);

    streamControllertime = StreamController();
    inpoutDatatime = streamControllertime.sink;
    aoutputeDatatime = streamControllertime.stream.asBroadcastStream();
    inpoutDatatime.add(timeSecondCounterNow.toDouble());

    makeConter();

    StremControaellerQuestion = StreamController();
    inPutDatStremQuestion = StremControaellerQuestion.sink;
    outPutStremQuestion =
        StremControaellerQuestion.stream.asBroadcastStream();
    inPutDatStremQuestion.add(questionNow);

    StremControaellerAnimationProgress = StreamController();
    intAnimationProgress = StremControaellerAnimationProgress.sink;
    outAnimationProgress =
        StremControaellerAnimationProgress.stream.asBroadcastStream();
    intAnimationProgress.add(animationprogresprcent);


     streamControllerQuestionsNow = StreamController();
  inpoutQuestionsNow=streamControllerQuestionsNow.sink;
    aoutputeQuestionsNow = streamControllerQuestionsNow.stream.asBroadcastStream();
    inpoutQuestionsNow.add( "${questionNow+1}/${countQuistion}");

  }
////////////////////////////////////////////////////////////////////////////////
  void forwerdAneimation() {
animationController.reset();
    animationController.forward();
    animationController.addListener(() {
      animationprogresprcent = tween.evaluate(animationController);
      inpoutDatatime.add((animationprogresprcent));
      intAnimationProgress.add(animationprogresprcent);
    });
  }

  ///////////////////////////////////////////////////////////////////////////
  


  /////////////////////////////////////////////////////////////////////////////
  void restartAnmaition(){
    animationController.addStatusListener((status) {
     if(status==AnimationStatus.completed){
      nextQuestion();
     }
      
    },);
  }
  /////////////////////////////////////////////////////////////////////////////

  void makeConter() {
    forwerdAneimation();
    inpoutDatatime.add((animationprogresprcent));
  }
  ////////////////////////////
  void goToAnseerScreens(){
     Navigator.pushReplacementNamed(_context,RuotesName.kAnswerScreen,arguments: {
      TextValiu.kname:_name,
    TextValiu.klistCorrectAnswer:listCorrectAnswer
     });
  }

/////////////////////////////////////////////////////////////////////////////////
void addName(String name){
  name=name;
}
////////////////////////////////////////////////////////////////////////

  void nextQuestion() {
    if (questionNow == listCorrectAnswer.length) {
      listCorrectAnswer.add(groupValueIndex);
    } else {
      listCorrectAnswer[questionNow] = groupValueIndex;
    }

    groupValueIndex = -1;
    inpoutDataGroupValueIndex.add(groupValueIndex);

    if (questionNow >= ConstValus.questionList.length - 1) {
      animationController.stop();
     // AnimationStatus=false;
      intAnimationProgress.add(animationprogresprcent);
      for(int i in listCorrectAnswer){
       print(i) ;
      }
      goToAnseerScreens();

    } else {
      questionNow++;
      makeConter();
    }

    inPutDatStremQuestion.add(questionNow);
    inpoutQuestionsNow.add( "${questionNow+1}/${countQuistion}");

  }
  //////////////////////////////////////////////////////////////////////////////////

  void onTapAlItemRadio(int index) {
    groupValueIndex = index;
    if (questionNow == listCorrectAnswer.length) {
      listCorrectAnswer.add(groupValueIndex);
    } else {
      listCorrectAnswer[questionNow] = groupValueIndex;
    }

      inpoutDataGroupValueIndex.add(groupValueIndex);

if( isNextActive = groupValueIndex != -1){
  isNextActive= true;
}else{
   isNextActive= false;
}   
    inputDataButtStream.add(isNextActive);
  }
  ////////////////////////////////////////////////////////////////////////////////////

  void onDispose() {
    inpoutDataGroupValueIndex.close();
    streamControllerGroupValueIndex.close();
    inpoutDatatime.close();
    streamControllertime.close();
    inputDataButtStream.close();
    streamControllerBotomStatys.close();
    inPutDatStremQuestion.close();
    StremControaellerQuestion.close();
    intAnimationProgress.close();
    StremControaellerAnimationProgress.close();
    inpoutQuestionsNow.close();
    streamControllerQuestionsNow.close();
      
  }
}
