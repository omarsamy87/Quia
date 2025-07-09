import 'package:auizapplaren/app/controller/login/login_Scren_Controlr.dart';
import 'package:auizapplaren/core/resources/asseta_maneger.dart';
import 'package:auizapplaren/view/login_screen/widget/CoustomtextformFildLoginScrns.dart';
import 'package:auizapplaren/core/widgets/CustomBotomStarloginScren.dart';
import 'package:auizapplaren/view/login_screen/widget/CustomTexstEnteryourname.dart';
import 'package:auizapplaren/view/login_screen/widget/CustomlogoLoginScreen.dart';
import 'package:flutter/material.dart';


class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late LoginScrenControlr _LoginScrenControlr;
  void initState(){
    super.initState();
    _LoginScrenControlr =LoginScrenControlr();
  }
  void dispose(){
    super.dispose();
    _LoginScrenControlr=LoginScrenControlr();

  }
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
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
            Customlogologinscreen(),
                    SizedBox(height: 50,),
            Customtexstenteryourname(),
                SizedBox(height: 10,),
                     CoustomtextformFildLoginScrns(
                      controllerName: _LoginScrenControlr.controllerNamedTixtFiled,
            validator: (value) {
            return _LoginScrenControlr.validateName(value);
            },
            keyForme: _LoginScrenControlr.formKeyName,
            onChanged: (value){
       
              _LoginScrenControlr.onChaingedTextFormFiled();
            
            },
                     ),
              
             SizedBox(height: 200,),
             Custombotomstarloginscren(
              isActtivoutBoutStream: _LoginScrenControlr.isActivoutOtputStrem,
              onPressed: () {
              _LoginScrenControlr.navigatekQuizscren(context);
              },
             ),
                   ],
            ),
          ),
        ),
      ),
      
    );
  }
}