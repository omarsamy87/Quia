import 'package:auizapplaren/core/resources/String.dart';
import 'package:auizapplaren/core/resources/color_maneger.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

class Customtexstenteryourname extends StatelessWidget {
  const Customtexstenteryourname({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(8.0),
      child: Align(
                alignment: AlignmentDirectional.centerStart,
                 child: Text(TextValiu.Enteryourname,
                 style:GoogleFonts.baloo2(
                   fontSize: 18,
                   color: ColorManege.kPraimreColor
                 ) ,),
               ),
    );
  }
}