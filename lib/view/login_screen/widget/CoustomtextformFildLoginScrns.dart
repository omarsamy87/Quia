import 'package:auizapplaren/core/resources/color_maneger.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CoustomtextformFildLoginScrns extends StatelessWidget {
  const CoustomtextformFildLoginScrns({
    super.key,
     required this.onChanged, 
     required this.keyForme, 
     required this.validator, required this.controllerName,
    
    
     });
  final ValueChanged<String> onChanged;
  final GlobalKey<FormState> keyForme;
    final FormFieldValidator <String>validator;
   final TextEditingController controllerName;
   

  @override
  Widget build(BuildContext context) {
    return  Form(
      key:keyForme ,
      child: TextFormField(
        controller: controllerName,
        keyboardType: TextInputType.name,
        validator:validator ,
        onChanged: onChanged,
                cursorColor: ColorManege.kPraimreColor,
                   decoration:InputDecoration(
                  
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20))
                      
                    ),
                    
                  
                   ) ,
                ),
    );
  }
}