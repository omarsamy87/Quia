
import 'package:auizapplaren/core/resources/asseta_maneger.dart';
import 'package:auizapplaren/view/login_screen/widget/CoustomTextFildNamedlogiScren.dart';
import 'package:auizapplaren/view/login_screen/widget/CustomTexstEnteryourname.dart';
import 'package:auizapplaren/view/login_screen/widget/CustomlogoLoginScreen.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              AssetaManeger.loginscreen),
              fit: BoxFit.cover)
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
               Customlogologinscreen(),
             Customtexstenteryourname(),
              SizedBox(height: 10,),
         Coustomtextfildnamedlogiscren(
          onChanged: (value){},
         ),
           
          
            ],
          ),
        ),
      ),
      
    );
  }
}