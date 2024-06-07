import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quiz_app/config/routes/app_routes.dart';
import 'package:quiz_app/constants.dart';
import 'package:quiz_app/controllers/question_controller.dart';
import 'package:flutter_svg/svg.dart';
import 'package:quiz_app/screens/welcome/welcome_screen.dart';

class ScoreScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    QuestionController _qnController = Get.put(QuestionController());
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
                style: Theme.of(context).textTheme.headline3!.copyWith(
                    color: Theme.of(context).colorScheme.onBackground),
              ),
              Spacer(),
              Text(
                "${_qnController.correctAns}/${_qnController.numOfQuestions}",
                style: Theme.of(context).textTheme.headline4!.copyWith(
                    color: Theme.of(context).colorScheme.onBackground),
              ),
              Spacer(flex: 1),
              InkWell(
                //onTap: () => Get.to(WelcomeScreen()),
                onTap: () {
                  Get.delete<QuestionController>();
                  Get.to(WelcomeScreen());
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
