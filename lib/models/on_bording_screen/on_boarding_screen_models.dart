class OnBoardingScreenModels {
  String? _onBoardingImge; 
  String? _onBordingTitle;
  String ?_onBordingDesc;
OnBoardingScreenModels(
   String onBoardingImge,
 String onBordingTitle,
String onBordingDesc ){
  _onBoardingImge =onBoardingImge;
  _onBordingTitle =onBordingTitle;
  _onBordingDesc =onBordingDesc;
}

  String get onBoardingImge => _onBoardingImge!;

  set onBoardingImge(String value) {
    _onBoardingImge = value;
  }

  String get onBordingTitle => _onBordingTitle!;

  set onBordingTitle(String value) {
    _onBordingTitle = value;
  }

  String get onBordingDesc => _onBordingDesc!;

  set onBordingDesc(String value) {
    _onBordingDesc = value;
  }
}