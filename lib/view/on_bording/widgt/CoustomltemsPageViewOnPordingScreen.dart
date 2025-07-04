import 'package:auizapplaren/models/on_bording_screen/on_boarding_screen_models.dart';
import 'package:flutter/material.dart';

class CoustomltemsPageViewOnPordingScreen extends StatelessWidget {
  const
   CoustomltemsPageViewOnPordingScreen({super.key, required this.onBoardingScreenModels, });

final OnBoardingScreenModels onBoardingScreenModels;
  @override
  Widget build(BuildContext context) {
    return   Padding(
        padding: const EdgeInsets.symmetric(horizontal: 28),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                  Image(image: 
                  AssetImage(      
           onBoardingScreenModels.onBoardingImge
                  ),
                  height: 400,),SizedBox(height: 80,),
                  Text(onBoardingScreenModels.onBordingTitle,style: TextStyle(fontSize: 25,fontWeight: FontWeight.w600),),SizedBox(height: 24,),
                   Text(onBoardingScreenModels.onBordingDesc),
                 
                  ],
            ),
          ),
        ),
      );
  }
}