import 'package:auizapplaren/core/resources/color_maneger.dart';
import 'package:auizapplaren/view/answer_screens/wdgit/Custom_Information_Student.dart';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AnswerScreen extends StatelessWidget {
  const AnswerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // var m= ModalRoute.of(context)!.settings.arguments;
    // print(m);
    return Scaffold(
      backgroundColor:(
        ColorManege.kPraimreColor),
      body: 

      SafeArea(
        child: Column(
                
          children: [
            
            CustomInformationStudent(name: 'omar', grade: '123456',),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                   Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.symmetric(horizontal: 10,),
                  //  margin: EdgeInsets.only(left: 16,right: 16,top: 39),
                   width: 58,
                  //  height: 100,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                     
                        blurRadius: 5,
                        spreadRadius: -5,
                        offset: Offset(0, 10)
                      )
                    ],
                    color: ColorManege.kwhite,
                    borderRadius: 
                    BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      topLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20),


                    )
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(  
                       "1",
                        style: GoogleFonts.baloo2(
                          color: ColorManege.kPraimreColor,
                          fontSize: 21,
                          fontWeight: FontWeight.bold,
                          // wordSpacing: -2
                        ),
                        ),
                  ],
                  ),
                )
                    ,     
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}