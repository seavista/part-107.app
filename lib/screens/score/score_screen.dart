import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quiz_app/config/routes/app_routes.dart';
import 'package:quiz_app/constants.dart';
import 'package:quiz_app/controllers/question_controller.dart';
import 'package:flutter_svg/svg.dart';
import 'package:quiz_app/screens/welcome/welcome_screen.dart';

import 'package:multi_circular_slider/multi_circular_slider.dart';

class ScoreScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    QuestionController _qnController = Get.put(QuestionController());

    //get score

    final scorePercentage =
        (_qnController.correctAns / _qnController.numOfQuestions.value * 100)
            .round();

    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Stack(
        fit: StackFit.expand,
        children: [
          Spacer(flex: 12),
          SvgPicture.asset("assets/icons/bg.svg", fit: BoxFit.cover),
          Column(
            children: [
              Spacer(),
              Text(
                "Score",
                style: Theme.of(context).textTheme.displayLarge!.copyWith(
                    color: Theme.of(context).colorScheme.onPrimaryContainer),
              ),
              Spacer(),
              MultiCircularSlider(
                size: MediaQuery.of(context).size.width * 0.5,
                progressBarType: MultiCircularSliderType.circular,
                values: const [0.2, 0.1, 0.3, 0.28],
                colors: const [
                  Color(0xFFFD1960),
                  Color(0xFF29D3E8),
                  Color(0xFF18C737),
                  Color(0xFFFFCC05)
                ],
                innerWidget: Icon(
                  Icons.check,
                  size: 150,
                ),
                showTotalPercentage: true,
                key: key,
                label: 'This is label text',
                animationDuration: const Duration(milliseconds: 2000),
                animationCurve: Curves.easeInOutCirc,
                innerIcon: const Icon(Icons.integration_instructions),
                trackColor: Colors.white,
                progressBarWidth: 56.0,
                trackWidth: 56.0,
                labelTextStyle: const TextStyle(),
                percentageTextStyle: TextStyle(
                    color: Theme.of(context).colorScheme.background,
                    fontSize: 36),
              ),
              Text(
                "${scorePercentage.toString()} %",
                style: Theme.of(context).textTheme.displayLarge!.copyWith(
                    color: Theme.of(context).colorScheme.onBackground),
              ),
              Text(
                "${_qnController.correctAns}/${_qnController.numOfQuestions} Correct Answers",
                style: Theme.of(context).textTheme.headline4!.copyWith(
                    color: Theme.of(context).colorScheme.onBackground),
              ),
              Spacer(flex: 1),
              InkWell(
                //onTap: () => Get.to(WelcomeScreen()),
                onTap: () {
                  Get.delete<QuestionController>();
                  _qnController.resetQuestions();

                  // we need to include the routeName
                  Get.to(() => WelcomeScreen(), routeName: "/WelcomeScreen");
                },
                child: Container(
                  width: MediaQuery.of(context).size.width / 2,
                  alignment: Alignment.center,
                  padding: EdgeInsets.all(kDefaultPadding * 0.75), // 15
                  decoration: BoxDecoration(
                    gradient: kPrimaryGradient,
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                  ),
                  child: Text(
                    "Try Again",
                    style: Theme.of(context)
                        .textTheme
                        .button!
                        .copyWith(color: Colors.black),
                  ),
                ),
              ),
              Spacer(flex: 1),
            ],
          )
        ],
      ),
    );
  }
}
