import 'package:auizapplaren/core/resources/color_maneger.dart';
import 'package:flutter/material.dart';

class Customappbarquizscren extends StatelessWidget implements PreferredSizeWidget {
  const Customappbarquizscren({super.key,
   required this.onTap, 
  //  required this.text, 
   required this.TxtQuisnStream
   });
  final GestureTapCallback onTap;
  // final String text;
final  Stream <String>TxtQuisnStream;

  @override
  Widget build(BuildContext context) {
    return    AppBar(
      backgroundColor: Color(0xffEff0F3),
      leadingWidth: 120,
leading: InkWell(
  onTap: onTap,
  child: Padding(
    padding: const EdgeInsets.only(left: 24),
    child: Row(
      children: [
        Icon(
          size: 20,
          Icons.arrow_back_ios, color:ColorManege.kPraimreColor,),
        Text("previos",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: ColorManege.kPraimreColor))
      ],
    ),
  ),
),
centerTitle: true,
title:StreamBuilder(
  
  stream: TxtQuisnStream, 
  
builder: (context,snapshot)=> Text(snapshot.data==null?"":snapshot.data!,style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),)
     

    )
   ;
  }
  
  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size(double.infinity, kToolbarHeight);
}