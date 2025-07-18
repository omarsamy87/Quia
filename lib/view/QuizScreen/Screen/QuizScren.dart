
import 'package:auizapplaren/app/controller/quiz/quiz_Screen_Controllr.dart';
import 'package:auizapplaren/core/resources/const_valus.dart';
import 'package:auizapplaren/core/widgets/CustomBotomStarloginScren.dart';
import 'package:auizapplaren/view/QuizScreen/wdgit/Coustom_List_vioe_Option_quiz_Scren.dart';
import 'package:auizapplaren/view/QuizScreen/wdgit/CustomAppBarQuizScren.dart';
import 'package:auizapplaren/view/QuizScreen/wdgit/Custom_Circul_Parcet_In_Cator_Quiz_Screen.dart';
import 'package:auizapplaren/view/QuizScreen/wdgit/Custom_Quizstion_Titel.dart';
import 'package:flutter/material.dart';


class Quizscren extends StatefulWidget {
  const Quizscren({super.key});

  @override
  State<Quizscren> createState() => _QuizscrenState();
}

class _QuizscrenState extends State<Quizscren> with SingleTickerProviderStateMixin{
  late QuizScreenControllr _quizScreenControllr;
  @override
  void dispose() {
    // TODO: implement dispose
 
    _quizScreenControllr.onDispose();
  }
  void initState() {
    // TODO: implement initState
    super.initState();
_quizScreenControllr =QuizScreenControllr(this ,context);
_quizScreenControllr.forwerdAneimation();
_quizScreenControllr.restartAnmaition();
  }
  @override
  Widget build(BuildContext context) {
    String name = ModalRoute.of(context)!.settings.arguments as String;
    _quizScreenControllr.addName(name);
  //  print(a);
    return Scaffold(
      backgroundColor: Color(0xffEff0F3),
 appBar: Customappbarquizscren(
  onTap: () {
     Navigator.of(context).canPop();
  },
  
   TxtQuisnStream:_quizScreenControllr.aoutputeQuestionsNow ,
 ),
 
 body: Padding(
   padding: const EdgeInsets.symmetric(horizontal: 24),
   child:  Container(
    width: double.infinity,
     child: SingleChildScrollView(
       child: Column(
       crossAxisAlignment: CrossAxisAlignment.center,
         children: [
          SizedBox(height: 88,),
          Stack(
            clipBehavior: Clip.none,
            children: [
              CustomQuizstionTitel(outPutStremQuestionTitele: _quizScreenControllr.outPutStremQuestion 
                ),
            Positioned(
                right: 0,
                left: 0,
                top: -29,
                
              child: CustomCirculParcetInCatorQuizScreen(
  outpoutstreamTime: _quizScreenControllr.aoutputeDatatime,
 outAnimationProgress: _quizScreenControllr.isActivoutOtputStrem,

),
),
       
           ],
          )
          
          ,SizedBox(height: 70,) ,
        CoustomListVioeOptionQuizScren(
         
       outputGroupValueRediis: _quizScreenControllr.aoutputeDataGroupValueIndex, 
         onTap: (int indexValue) { _quizScreenControllr.onTapAlItemRadio(indexValue) ;},
          outPutStremQuestion: _quizScreenControllr.outPutStremQuestion,)
        
         
          
          ],
       ),
     ),
   ),
 ),

 bottomNavigationBar: Padding(
   padding: const EdgeInsets.only(right: 20 , left: 20,bottom: 40),
   child: Custombotomstarloginscren(onPressed: (){
    
_quizScreenControllr.nextQuestion();
   },
    isActtivoutBoutStream: _quizScreenControllr.isActivoutOtputStrem),
 ), 
 );
  }
}