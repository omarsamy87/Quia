import 'package:auizapplaren/app/controller/on_pording/on_pording_controller.dart';
import 'package:auizapplaren/core/resources/asseta_maneger.dart';
import 'package:auizapplaren/view/on_bording/widgt/coustom_bottom_nve_bar_on_pording_pag.dart';
import 'package:flutter/material.dart';

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

  @override
  Widget build(BuildContext context) {
   var currentpositionPage = _onPordingController.currentpositionPage;
    return Scaffold(
      
   
      body:  Column(

mainAxisAlignment: MainAxisAlignment.center,
        children: [
          
          Image(image: AssetImage("assets/images/Frame.png"))
        ],
      ),  
         bottomNavigationBar: CoustomBottomNveBarOnPordingPag(
          outputDataIndicator: _onPordingController.ouputData,
          ontap:( index ){
            _onPordingController.ontapDotIndicaton(index);
          },
        
        currentpositionPage: _onPordingController.currentpositionPage.toDouble(),
        dotsCount:3,
      ),
    );
  }
}