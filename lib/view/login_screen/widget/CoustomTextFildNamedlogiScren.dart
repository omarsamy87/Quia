import 'package:auizapplaren/core/resources/color_maneger.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Coustomtextfildnamedlogiscren extends StatelessWidget {
  const Coustomtextfildnamedlogiscren({
    super.key,
     required this.onChanged,
    
     });
  final ValueChanged<String> onChanged;
  @override
  Widget build(BuildContext context) {
    return  TextField(
      onChanged: onChanged,
              cursorColor: ColorManege.kPraimreColor,
                 decoration:InputDecoration(
                
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20))
                    
                  ),
                  //      focusedBorder: OutlineInputBorder(
                  //       borderSide: BorderSide(color: Colors.green),
                  //   borderRadius: BorderRadius.all(Radius.circular(20))
                    
                  // )
                
                 ) ,
              );
  }
}