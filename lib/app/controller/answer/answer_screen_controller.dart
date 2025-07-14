import 'package:auizapplaren/core/resources/String.dart';
import 'package:auizapplaren/core/resources/const_valus.dart';


class AnswerScreenController {
  late Map studentAnswers;
  List<bool> answers = [];

  void getStudentAnswers(Map studentAnswers) {
    this.studentAnswers = studentAnswers;
    compareAnswers();
  }

  void compareAnswers() {
    answers.clear();
    for (int i = 0; i <ConstValus .questionList.length; i++) {
      bool an = studentAnswers[TextValiu.klistCorrectAnswer][i] ==
          ConstValus.questionList[i].correctAnswer;
      answers.add(an);
    }
    print(answers);
  }

  void printList() {
    print(studentAnswers);
  }

  int getCountCorrectAnswer() {
    int count = 0;
    for (bool i in answers) {
     if( i == true) {
       count++;
     }
    }
    return count;
  }
}









