import 'package:auizapplaren/core/resources/String.dart';
import 'package:auizapplaren/core/resources/asseta_maneger.dart';
import 'package:auizapplaren/models/on_bording_screen/on_boarding_screen_models.dart';
import 'package:flutter/material.dart';
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
}