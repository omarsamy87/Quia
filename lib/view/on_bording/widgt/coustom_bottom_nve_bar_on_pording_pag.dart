import 'package:auizapplaren/core/resources/String.dart';
import 'package:auizapplaren/core/resources/font_maneger.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CoustomBottomNveBarOnPordingPag extends StatelessWidget {
  const CoustomBottomNveBarOnPordingPag({
    super.key,
     required this.dotsCount,
      // required this.currentpositionPage,
       required this.ontapDotIndicator, 
       required this.outputDataIndicator, 
       this.onTapNexte, 
       required this.outputDataTextStart, 
       this.onskip});
final int dotsCount;
// final double currentpositionPage;
final void  Function( int index) ontapDotIndicator;
final Stream outputDataIndicator;
final Stream outputDataTextStart;

  final GestureTapCallback? onTapNexte;
  final GestureTapCallback? onskip;


  @override
 @override
Widget build(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.only(left: 32, right: 32, bottom: 40),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        InkWell(
          onTap:onskip ,
          child: Text(
            TextValiu.kskip,
            style: TextStyle(fontSize: fontSize.f15),
          ),
        ),
        
        StreamBuilder(
          stream: outputDataIndicator,
          builder: (context, Snapshot) => DotsIndicator(
            decorator: DotsDecorator(
              activeSize: Size(12, 12),
              size: Size(12, 12),
              color: Color(0xff979797),
              activeColor: Color(0xff473F97),
            ),
            onTap: (position) {
              ontapDotIndicator(position);
            },
            dotsCount: dotsCount,
            position: Snapshot.data == null
                ? 0.0
                : Snapshot.data!.toDouble(),
          ),
        ),

        InkWell(
          onTap: onTapNexte,
          child: StreamBuilder(
            stream:outputDataTextStart ,
            builder:(context,snapsoht)=> Text(
             snapsoht.data==null? TextValiu.kNext:snapsoht.data==dotsCount-1?"start":TextValiu.kNext,
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: fontSize.f15,
              ),
            ),
          ),
        ),
      ],
    ),
  );

}}