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
void dispose(){
  _onPordingController.onDisPose();
  super.dispose();

}

  @override
  Widget build(BuildContext context) {
  //  var currentpositionPage = _onPordingController.currentpositionPage;
    return Scaffold(
      
   
      bottomNavigationBar: CoustomBottomNveBarOnPordingPag(
          onTapNexte: (){
            _onPordingController.onTapNexte();
          },
         
          outputDataIndicator: _onPordingController.ouputData,
          ontapDotIndicator:( index ){
            _onPordingController.ontapDotIndicaton(index);
          },
        
        // currentpositionPage: _onPordingController.currentpositionPage.toDouble(),
        dotsCount:3,
      ),
    body:  SafeArea(
      child: PageView.builder(
          itemCount: 3,
      itemBuilder: (context,index)=>
      Container(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 28),
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                    Image(image: 
                    AssetImage(      
              "D:/auizapplaren/assets/images/Frame.png",
                    ),
                    height: 400,),SizedBox(height: 80,),
                    Text("Synonyms for QUIZ",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w600),),SizedBox(height: 24,),
                     Text("Synonyms for QUIZ"),
                   
                    ],
              ),
            ),
          ),
        ),
      ),
        ),
    ),  
       
    );
  }
}