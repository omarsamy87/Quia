import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../view/splash/screen/splash_screen.dart';

class QuisApp extends StatelessWidget {
  const QuisApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
