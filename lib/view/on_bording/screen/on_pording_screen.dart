import 'package:auizapplaren/app/controller/on_pording/on_pording_controller.dart';
import 'package:auizapplaren/core/resources/const_valus.dart';
import 'package:auizapplaren/view/on_bording/widgt/CoustomltemsPageViewOnPordingScreen.dart';
import 'package:auizapplaren/view/on_bording/widgt/coustom_bottom_nve_bar_on_pording_pag.dart';
import 'package:flutter/material.dart';
//  في الصفحة دي مستخدمين بج فيو وعلشان نجيب البيانت اللي احنا عيزنها استخدمنا الليست كما موضح في السطر 40
class OnPordingScreen extends StatefulWidget {
  const OnPordingScreen({super.key});

  @override
  State<OnPordingScreen> createState() => _OnPordingScreenState();
}

class _OnPordingScreenState extends State<OnPordingScreen> {
  late OnPordingController _onPordingController;
  @override
void initState() {
  super.initState();
  _onPordingController = OnPordingController();
}
void dispose(){
  _onPordingController.onDisPose();
  super.dispose();

}

  @override
 @override
Widget build(BuildContext context) {
  return Scaffold(
    resizeToAvoidBottomInset: false,
    body: SafeArea(
      child: Column(
        children: [
          // Expanded مهم عشان يدي PageView كل المساحة الباقية
          Expanded(
            child: PageView.builder(
              
              controller: _onPordingController.onBoardingViweConyrolr,
              itemCount: ConstValus.onBordigListConst.length,
              itemBuilder: (context, index) =>
                  CoustomltemsPageViewOnPordingScreen(
                onBoardingScreenModels: ConstValus.onBordigListConst[index],
              ),
              onPageChanged: (index) {
                _onPordingController.currentpositionPage = index;
                _onPordingController.inputData.add(index);
              },
            ),
          ),

          CoustomBottomNveBarOnPordingPag(
            onTapNexte: () {
              _onPordingController.onTapNexte();
            },
            outputDataIndicator: _onPordingController.ouputData,
            ontapDotIndicator: (index) {
              _onPordingController.ontapDotIndicaton(index);
            },
            dotsCount: 3,
          ),
        ],
      ),
    ),
  );
}
}