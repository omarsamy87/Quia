import 'package:auizapplaren/core/resources/color_maneger.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:multiple_stream_builder/multiple_stream_builder.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class CustomCirculParcetInCatorQuizScreen extends StatelessWidget {
  const CustomCirculParcetInCatorQuizScreen({super.key,  required this.outpoutstreamTime, required this.outAnimationStatus});

final Stream<int>outpoutstreamTime;
final Stream <bool> outAnimationStatus;
  @override
  Widget build(BuildContext context) {
    return   CircleAvatar(
               radius: 34,
               backgroundColor: ColorManege.kwhite,
              child: StreamBuilder2(streams: StreamTuple2(outAnimationStatus,outpoutstreamTime ),
               builder: (context,Snapshots)=>
              CircularPercentIndicator(
                radius: 34,
                progressColor: ColorManege.kPraimreColor,
                backgroundColor: ColorManege.kPraimreColor.withOpacity(.38),
                percent: 1,
                animation: Snapshots.snapshot1.data==null?false:Snapshots.snapshot1.data!,
                restartAnimation: true,
                animationDuration: 3000,
                
                center: Text(
              Snapshots.snapshot2.data==null?"0":Snapshots.snapshot2.data.toString() ,
                 style: GoogleFonts.baloo2(
                 fontWeight: FontWeight.w700,
                 fontSize: 32
                                ),)
               
                
                ),
           ) )
          ;
  }
}