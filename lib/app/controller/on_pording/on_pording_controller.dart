import 'package:flutter/material.dart';
import 'dart:async';

class OnPordingController {
  int currentpositionPage = 0;
  late StreamController<int> streamController;
  late Sink<int> inputData;
  late Stream<int> ouputData;
  PageController pageController = PageController();

  OnPordingController() {
    streamController = StreamController<int>.broadcast();
    inputData = streamController.sink;
    ouputData = streamController.stream;
    inputData.add(currentpositionPage);
  }

  void onTapNexte() {
    if (currentpositionPage < 2) {
      currentpositionPage++;
      pageController.animateToPage(
        currentpositionPage,
        duration: Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
      inputData.add(currentpositionPage);
    }
  }

  void ontapDotIndicaton(int index) {
    currentpositionPage = index;
    pageController.animateToPage(
      index,
      duration: Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
    inputData.add(currentpositionPage);
  }

  void onDisPose() {
    streamController.close();
    pageController.dispose();
  }
}
