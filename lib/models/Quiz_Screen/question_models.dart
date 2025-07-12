class QuestionModels {
 late String _question;
 late List  _listAnswer;
 late dynamic  _correctAnswer;
  QuestionModels ({
  required String question,
  required List<dynamic> listAnswer,
  required dynamic correctAnswer,
  }){
    _question=question;
    _listAnswer =listAnswer;
    _correctAnswer =correctAnswer;
  }

  dynamic get correctAnswer => _correctAnswer!;

  set correctAnswer(dynamic value) {
    _correctAnswer = value;
  }

  List<dynamic> get listAnswer => _listAnswer;

  set listAnswer(value) {
    _listAnswer = value;
  }

  String get question => _question!;

  set question(String value) {
    _question = value;
  }
}