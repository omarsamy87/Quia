import 'package:auizapplaren/core/resources/color_maneger.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomInformationStudent extends StatelessWidget {
  const CustomInformationStudent({super.key, required this.name, required this.grade});
final String name;
final String grade;

  @override
  Widget build(BuildContext context) {
    return  Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.symmetric(horizontal: 16,vertical: 20),
                margin: EdgeInsets.only(left: 16,right: 16,top: 39),
                width: double.infinity,
                // height: 100,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                   
                      blurRadius: 5,
                      spreadRadius: -5,
                      offset: Offset(0, 10)
                    )
                  ],
                  color: ColorManege.kwhite,
                  borderRadius: BorderRadius.circular(20)
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(  
                     name,
                      style: GoogleFonts.baloo2(
                        fontSize: 21,
                        fontWeight: FontWeight.bold,
                        // wordSpacing: -2
                      ),
                      ),
                      SizedBox(height: 15,),
                        Text(  
                     grade,
                      style: GoogleFonts.baloo2(
                        fontSize: 21,
                        fontWeight: FontWeight.w400,
                        // wordSpacing: -2
                      ),
                      ),
                  ],
                ),
              )
           ;
  }
}