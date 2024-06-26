import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:signal_flags_app/controllers/question_controller.dart';
import 'package:signal_flags_app/utils/constants.dart';


class ProgressBar extends StatelessWidget {
  const ProgressBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GetBuilder<QuestionController>(
      id: 'progressBar',
      builder: (controller) {
        return Container(
          width: double.infinity,
          height: 18,
          decoration: BoxDecoration(
            border: Border.all(color: kBorderColor, width: 2),
            borderRadius: BorderRadius.circular(50),
          ),
          child: Stack(
            children: [
              LayoutBuilder(
                builder: (context, constraints) => Container(
                  width: constraints.maxWidth * controller.animation.value, //max width taken from LayoutBuilder
                  decoration: BoxDecoration(
                    gradient: kProgressBarGradient,
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
              ),
              Positioned.fill(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding / 2),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    //children: [Text("${(controller.animation.value * 30).round()} sec")],
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
