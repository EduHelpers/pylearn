import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'question_controller.dart';

class ProgressBar extends StatelessWidget {
  ProgressBar(this.quizId, this.duration, this.lst, this.randNum, {super.key});

  final String quizId;
  final int duration;
  List<bool> lst = [];
  int randNum = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 35,
      decoration: BoxDecoration(
        border: Border.all(color: const Color(0xFF3F4768), width: 3),
        borderRadius: BorderRadius.circular(50),
      ),
      child: GetBuilder<QuestionController>(
        init: QuestionController(quizId, duration, lst, randNum),
        builder: (controller) {
          return Stack(
            children: [
              LayoutBuilder(
                builder: (context, constraints) => Container(
                  width: constraints.maxWidth * controller.animation!.value,
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      colors: [Color(0xFF46A0AE), Color(0xFF00FFCB)],
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                    ),
                    borderRadius: BorderRadius.circular(40),
                  ),
                ),
              ),
              Positioned.fill(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                          "${duration - (controller.animation!.value * duration).round()} c."),
                    ],
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
