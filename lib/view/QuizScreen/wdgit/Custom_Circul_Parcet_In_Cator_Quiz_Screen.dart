import 'package:auizapplaren/core/resources/color_maneger.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:multiple_stream_builder/multiple_stream_builder.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class CustomCirculParcetInCatorQuizScreen extends StatefulWidget {
  const CustomCirculParcetInCatorQuizScreen({super.key,  required this.outpoutstreamTime, required this.outAnimationProgress});

final Stream<double>outpoutstreamTime;
final Stream <bool> outAnimationProgress;


  @override
  State<CustomCirculParcetInCatorQuizScreen> createState() => _CustomCirculParcetInCatorQuizScreenState();
}

class _CustomCirculParcetInCatorQuizScreenState extends State<CustomCirculParcetInCatorQuizScreen>
 with SingleTickerProviderStateMixin{
  
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    var animationController = AnimationController(vsync: this,duration: Duration(seconds: 30));
   
  }
  @override
  Widget build(BuildContext context) {
    return   CircleAvatar(
               radius: 34,
               backgroundColor: ColorManege.kwhite,
              child: StreamBuilder2(streams: StreamTuple2(widget.outAnimationProgress,widget.outpoutstreamTime ),
               builder: (context,Snapshots)=>
              CircularPercentIndicator(
                radius: 34,

                restartAnimation:true ,
                 percent: Snapshots.snapshot2.data==null?0.0:Snapshots.snapshot2.data!,
                circularStrokeCap: CircularStrokeCap.round,
                progressColor: ColorManege.kPraimreColor,
                backgroundColor: ColorManege.kPraimreColor.withOpacity(.38),
               
                 animation: Snapshots.snapshot1.data==null?false:Snapshots.snapshot1.data!,
                
                animationDuration: 3000,
                
                center: Text(
              Snapshots.snapshot1.data==null?"0":Snapshots.snapshot1.data.toString() ,
                 style: GoogleFonts.baloo2(
                 fontWeight: FontWeight.w700,
                 fontSize: 32
                                ),)
               
                
                ),
           ) )
          ;
  }
}