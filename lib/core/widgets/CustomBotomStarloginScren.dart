import 'package:auizapplaren/core/resources/color_maneger.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Custombotomstarloginscren extends StatelessWidget {
  const Custombotomstarloginscren({
    super.key,
     required this.onPressed, 
     required this.isActtivoutBoutStream,
  
     });
   final VoidCallback onPressed;
   final Stream<bool>isActtivoutBoutStream;
  @override
  Widget build(BuildContext context) {
    return    StreamBuilder(stream: isActtivoutBoutStream,
     builder: (context, snapshot)=>  MaterialButton(
          padding: EdgeInsets.all(0),
            onPressed:snapshot.data==null?null:snapshot.data==true?onPressed:null,
          child: Container(
            alignment: AlignmentDirectional.center,
            height: 59,
            width: double.infinity,
            decoration: BoxDecoration(
                color:
                snapshot.data==null
                ?ColorManege.kPraimreColor
                :snapshot.data==true
                ?ColorManege.kblack
                :Color(0xff123456),
                
                borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
            child: Text("cvbnm,." ,style: TextStyle(
              fontSize: 24,
              color: ColorManege.kwhite),)),
          
          )
           );
  }
}