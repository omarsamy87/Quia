import 'package:auizapplaren/core/resources/String.dart';
import 'package:auizapplaren/core/resources/asseta_maneger.dart';
import 'package:auizapplaren/models/Quiz_Screen/question_models.dart';
import 'package:auizapplaren/models/on_bording_screen/on_boarding_screen_models.dart';
// دي صفغحة الليست اللي بتاخد من المودلز والملاحظه ان الليست <الموديلز > وتقدر تستدعي الليست زي ما انت عايز>
class ConstValus {
 static List<OnBoardingScreenModels> onBordigListConst =[
OnBoardingScreenModels(
 
AssetaManeger.I1,

 TextValiu.kNext,
  TextValiu.kTextBtoom),


OnBoardingScreenModels(AssetaManeger.I2,
 TextValiu.kNext,
  TextValiu.kTextBtoom),

OnBoardingScreenModels(
  AssetaManeger.I3,
 TextValiu.kNext,
  TextValiu.kTextBtoom)


  ];





static List<QuestionModels>questionList=[
QuestionModels(
  question: "Wate is yer jop",
 listAnswer: [
  "11111111111111","fludtterfghjkl;", " doctor ", "teather",
 ],
  correctAnswer: 1
  )


,QuestionModels(
  question: "Wate is yer 222jop",
 listAnswer: [
  "flutter","22222222222222", " doctor ", "tedfghjkl;ather",
 ],
  correctAnswer: 2
  )

,QuestionModels(
  question: "Wate is sdfghjkl;xkldfghjdfghj jop",
 listAnswer: [
  "flutter", "3333333333333"," doctor ", "tsdfghjkleather"
 ],
  correctAnswer: 4
  )

//   ,QuestionModels(
//   question: "Wate is yeeeeeeeeeeeeeeeeeeeeeer jop",
//  listAnswer: [
//   "flutter","44444444444", " doctfghjkl;sdfghjkor ", "teather",
//  ],
//   correctAnswer: 2
//   )
];
}