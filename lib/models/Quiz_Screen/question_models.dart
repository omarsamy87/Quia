class QuestionModels {
  late String _question;
  late List _listAnswer;
  late int _correctAnswer;

  QuestionModels({
    required String question,
    required List<dynamic> listAnswer,
    required int correctAnswer,
  }) {
    _question = question;
    _listAnswer = listAnswer;
    _correctAnswer = correctAnswer;
  }

  // Getter and Setter for _question
  String get question => _question;
  set question(String value) {
    _question = value;
  }

  // Getter and Setter for _listAnswer
  List get listAnswer => _listAnswer;
  set listAnswer(List value) {
    _listAnswer = value;
  }

  // Getter and Setter for _correctAnswer
  int get correctAnswer => _correctAnswer;
  set correctAnswer(int value) {
    _correctAnswer = value;
  }
}
