import 'package:flutter/cupertino.dart';

class LoginScrenControlr {
  String name="";
  late GlobalKey<FormState> formKeyName;
  LoginScrenControlr(){
    formKeyName=GlobalKey();
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
}