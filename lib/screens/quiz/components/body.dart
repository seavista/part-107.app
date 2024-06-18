import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quiz_app/constants.dart';
import 'package:quiz_app/controllers/question_controller.dart';
import 'package:quiz_app/models/Questions.dart';
import 'package:photo_view/photo_view.dart';
import 'package:quiz_app/screens/quiz/components/figure.dart';
import 'progress_bar.dart';
import 'question_card.dart';

class Body extends StatelessWidget {
  const Body({
    required Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // So that we have acccess our controller
    QuestionController _questionController = Get.put(QuestionController());

    return Stack(
      fit: StackFit.expand,
      children: [
        SizedBox(height: kDefaultPadding),
        Image.asset("assets/images/bg.png", fit: BoxFit.cover),
        SafeArea(
          maintainBottomViewPadding: true,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                  child: ProgressBar(
                    key: this.key!,
                  ),
                ),
                SizedBox(height: kDefaultPadding),
                Container(
                  color:
                      Theme.of(context).colorScheme.background.withAlpha(200),
                  padding:
                      const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                  child: Obx(
                    () => Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text.rich(
                          TextSpan(
                            text:
                                "Question ${_questionController.questionNumber.value}",
                            style: Theme.of(context)
                                .textTheme
                                .headline4!
                                .copyWith(
                                    color:
                                        Theme.of(context).colorScheme.onPrimary,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 36),
                            children: [
                              TextSpan(
                                text:
                                    "/${_questionController.questions.length}",
                                style: Theme.of(context)
                                    .textTheme
                                    .headline5!
                                    .copyWith(
                                        color: Theme.of(context)
                                            .colorScheme
                                            .onPrimary,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 36),
                              ),
                            ],
                          ),
                        ),
                        if (!_questionController.isLastQuestion)
                          ImageThumbnail(
                              assetPath:
                                  '${_questionController.questions[_questionController.questionNumber.value].figure}',
                              figureName:
                                  '${_questionController.questions[_questionController.questionNumber.value].figure.toString()}')
                      ],
                    ),
                  ),
                ),
                Divider(thickness: 1.5),
                SizedBox(height: kDefaultPadding),
                SizedBox(
                  height: MediaQuery.of(context).size.height -
                      kDefaultPadding, // Ensure the height is constrained

                  child: PageView.builder(
                    // Block swipe to next qn
                    physics: NeverScrollableScrollPhysics(),
                    controller: _questionController.pageController,
                    onPageChanged: _questionController.updateTheQnNum,
                    itemCount: _questionController.questions.length,
                    itemBuilder: (context, index) => QuestionCard(
                      question: _questionController.questions[index],
                      key: this.key!,
                    ),
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
