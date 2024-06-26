import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'question_controller.dart';

class Option extends StatelessWidget {
  Option(this.text, this.index, this.press, this.quizid, this.duration,
      this.lst, this.randNum,
      {super.key});
  final String text;
  final int index;
  final VoidCallback press;
  final String quizid;
  final int duration;
  List<bool> lst = [];
  int randNum = 0;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<QuestionController>(
        init: QuestionController(quizid, duration, lst, randNum),
        builder: (qnController) {
          Color getTheRightColor() {
            if (qnController.isAnswered) {
              if (index == qnController.correctAns) {
                return const Color(0xFF6AC259);
              } else if (index == qnController.selectedAns &&
                  qnController.selectedAns != qnController.correctAns) {
                return const Color(0xFFE92E30);
              }
            }
            return const Color(0xFFC1C1C1);
          }

          IconData getTheRightIcon() {
            return getTheRightColor() == const Color(0xFFE92E30)
                ? Icons.close
                : Icons.done;
          }

          return InkWell(
            onTap: press,
            child: Container(
              margin: const EdgeInsets.only(top: 20.0),
              padding: const EdgeInsets.all(20.0),
              decoration: BoxDecoration(
                border: Border.all(color: getTheRightColor()),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "${index + 1}. $text",
                    style: const TextStyle(color: Colors.black, fontSize: 16),
                  ),
                  Container(
                    height: 26,
                    width: 26,
                    decoration: BoxDecoration(
                      color: getTheRightColor() == const Color(0xFFC1C1C1)
                          ? Colors.transparent
                          : getTheRightColor(),
                      borderRadius: BorderRadius.circular(50),
                      border: Border.all(color: getTheRightColor()),
                    ),
                    child: getTheRightColor() == const Color(0xFFC1C1C1)
                        ? null
                        : Icon(getTheRightIcon(), size: 16),
                  )
                ],
              ),
            ),
          );
        });
  }
}
