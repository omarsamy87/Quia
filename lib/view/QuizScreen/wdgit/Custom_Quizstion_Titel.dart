import 'package:auizapplaren/core/resources/color_maneger.dart';
import 'package:auizapplaren/core/resources/const_valus.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomQuizstionTitel extends StatelessWidget {
  const CustomQuizstionTitel({super.key, required this.outPutStremQuestionTitele});
final Stream< int> outPutStremQuestionTitele;
   

  @override
  Widget build(BuildContext context) {
    return  StreamBuilder(
      stream: outPutStremQuestionTitele,
       builder: (context,snapshot)=>  
        Container(
              alignment: Alignment.center,
              padding: EdgeInsets.all(25),
              child: Text(  
                ConstValus.questionList[
                  snapshot.data==null?0:snapshot.data!

                ].question,
                style: GoogleFonts.baloo2(
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                  // wordSpacing: -2
                ),
                ),
              width: double.infinity,
              height: 200,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: ColorManege.kblack,
                    blurStyle: BlurStyle.outer,
                    blurRadius: 100,
                    spreadRadius: -50,
                    offset: Offset(0, 20)
                  )
                ],
                color: ColorManege.kwhite,
                borderRadius: BorderRadius.circular(20)
              ),
            )
          );
  }
}