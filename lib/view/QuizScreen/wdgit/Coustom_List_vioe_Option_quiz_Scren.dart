import 'package:auizapplaren/core/resources/const_valus.dart';
import 'package:auizapplaren/view/QuizScreen/wdgit/Custom_Titel_redio_quiz_screen.dart';
import 'package:flutter/material.dart';
import 'package:multiple_stream_builder/multiple_stream_builder.dart';

class CoustomListVioeOptionQuizScren extends StatelessWidget {
  const CoustomListVioeOptionQuizScren({super.key, 
  // required this.itemCount, 
  // required this.option,
   required this.outputGroupValueRediis,
    required this.onTap, 
    required this.outPutStremQuestion,});
// final int itemCount;
// final List <dynamic> option;
 final Stream <int> outputGroupValueRediis ;
 final Stream <int> outPutStremQuestion;
 final void Function(int indexValue)onTap;
  @override
  Widget build(BuildContext context) {
    return   StreamBuilder2<int,int>(
      streams:StreamTuple2(outPutStremQuestion, outputGroupValueRediis) ,
      builder:(context,Snabshots)=>ListView.separated(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context,indxe)=>
               CustomTitelRedioQuizScreen(
               onTap: () {
                 onTap(indxe);
               },
               isSleected: Snabshots . snapshot2 . data == null ? false :
               Snabshots . snapshot2 . data == indxe ? true : false ,
               option: ConstValus . questionList [ Snabshots.snapshot1.data==null?0:Snabshots.snapshot1.data!].listAnswer[indxe],
                             ),
             separatorBuilder:  (context,indxe)=> SizedBox(height: 25,),
              itemCount:ConstValus.questionList[Snabshots.snapshot1.data==null?0:Snabshots.snapshot1.data!].listAnswer.length,
              ),
    ) ;
  }
}

