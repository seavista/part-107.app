import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quiz_app/controllers/question_controller.dart';
import 'package:quiz_app/models/Questions.dart';
import 'package:quiz_app/screens/quiz/components/figure.dart';

import '../../../constants.dart';
import 'option.dart';

class QuestionCard extends StatelessWidget {
  const QuestionCard({
    required Key key,
    // it means we have to pass this
    required this.question,
  }) : super(key: key);

  final Question question;

  @override
  Widget build(BuildContext context) {
    QuestionController _controller = Get.put(QuestionController());
    return Container(
      margin: EdgeInsets.symmetric(horizontal: kDefaultPadding),
      padding: EdgeInsets.all(kDefaultPadding),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.secondaryContainer,
        borderRadius: BorderRadius.circular(25),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SelectableText(
            question.question,
            style: Theme.of(context)
                .textTheme
                .headline6!
                .copyWith(color: kBlackColor),
          ),
          SizedBox(height: kDefaultPadding / 2),
          ...List.generate(
            question.options.length,
            (index) => Option(
              index: index,
              text: question.options[index],
              press: () => _controller.checkAns(question, index),
              key: null,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          if (question.figure != null)
            Expanded(
              child: ImageThumbnail(
                  assetPath:
                      '${_controller.questions[_controller.questionNumber.value - 1].figure}',
                  figureName:
                      '${_controller.questions[_controller.questionNumber.value - 1].figure.toString()}'),
            ),
        ],
      ),
    );
  }
}
