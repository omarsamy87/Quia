import 'package:auizapplaren/app/controller/answer/answer_screen_controller.dart';
import 'package:auizapplaren/core/resources/String.dart';
import 'package:auizapplaren/core/resources/color_maneger.dart';
import 'package:auizapplaren/core/resources/const_valus.dart';
import 'package:auizapplaren/view/answer_screens/wdgit/Cuostom_Status_Aunswer_Aunswer_Screen.dart';
import 'package:auizapplaren/view/answer_screens/wdgit/Custom_Information_Student.dart';
import 'package:auizapplaren/view/answer_screens/wdgit/Custom_Qoesiton_Naumper.dart';
import 'package:flutter/material.dart';


class AnswerScreen extends StatefulWidget {
  const AnswerScreen({super.key});

  @override
  State<AnswerScreen> createState() => _AnswerScreenState();
}

class _AnswerScreenState extends State<AnswerScreen> {
  late AnswerScreenController controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = AnswerScreenController();
  }

  @override
  Widget build(BuildContext context) {
    Map studentAnswers = ModalRoute.of(context)!.settings.arguments as Map;
    controller.getStudentAnswers(studentAnswers);
    return Scaffold(
      backgroundColor: ColorManege.kPraimreColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [

              CustomInformationStudent(
                  name: controller.studentAnswers[TextValiu.kname],
                  grade: "Grade :      ${
                  controller.getCountCorrectAnswer()
                  }     /       ${
                  controller.answers.length
                  }"),
              const SizedBox(
                height: 20,
              ),
              ListView.separated(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (context, index) => Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomQuestionNumberAnswerScreen(
                                order: index + 1,
                                isCorrect: controller.answers[index]),
                            CustomStatusAnswerAnswersScreen(
                              question: ConstValus.questionList[index].question,
                              answer: controller.studentAnswers[TextValiu
                                          .klistCorrectAnswer][index] ==
                                      -1
                                  ? "user not choose"
                                  : ConstValus.questionList[index].listAnswer[
                                      controller.studentAnswers[TextValiu
                                          .klistCorrectAnswer][index]],
                              correctAnswer: ConstValus
                                  .questionList[index]
                                  .listAnswer[ConstValus
                                      .questionList[index].correctAnswer]
                                  .toString(),
                              isCorrect: controller.answers[index],
                            )
                          ],
                        ),
                      ),
                  separatorBuilder: (context, index) => const SizedBox(
                        height: 20,
                      ),
                  itemCount: controller
                      .studentAnswers[TextValiu.klistCorrectAnswer].length),
              const SizedBox(
                height: 20,
              )
            ],
          ),
        ),
      ),
    );
  }
}

