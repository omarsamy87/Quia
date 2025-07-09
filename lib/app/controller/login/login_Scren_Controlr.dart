import 'dart:async';

import 'package:auizapplaren/core/resources/ruotes_maneger.dart';
import 'package:flutter/cupertino.dart';

class LoginScrenControlr {

  late GlobalKey<FormState> formKeyName;
  bool buttonIsActive=false;
late StreamController<bool> streamControllerBotomStatys;
late Sink<bool>inputDataButtStream;
  late Stream<bool> isActivoutOtputStrem;
  late TextEditingController controllerNamedTixtFiled;

  LoginScrenControlr(){
    formKeyName=GlobalKey();
streamControllerBotomStatys=StreamController();
inputDataButtStream =streamControllerBotomStatys.sink;
isActivoutOtputStrem=streamControllerBotomStatys.stream;
 inputDataButtStream.add(buttonIsActive);
 controllerNamedTixtFiled =TextEditingController();


  }
   String? validateName(String? value){
      if(value!.isEmpty){
                return "oooooooo";
              } else if(value.length<4){
                return "ghjkl;";
              }else{
                return null;
              }
  }
  void onChaingedTextFormFiled(){
      if(formKeyName.currentState!.validate()){
            buttonIsActive=true;
              }else{
               buttonIsActive=false;
              }
             inputDataButtStream.add(buttonIsActive);
  }
  onDispos(){
    inputDataButtStream.close();
    streamControllerBotomStatys.close();
  }
  void navigatekQuizscren(BuildContext context , ){
    
    Navigator.pushNamedAndRemoveUntil(
      arguments: controllerNamedTixtFiled.text,
      context, RuotesName.kQuizscren, (Route route)=>false);
  }
}