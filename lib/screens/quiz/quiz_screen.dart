import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quiz_app/controllers/question_controller.dart';

import 'components/body.dart';

class QuizScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    QuestionController _controller = Get.put(QuestionController());

    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        // leading: IconButton(
        //   icon: Icon(Icons.arrow_back),
        //   onPressed: () {
        //     // Capture the back button press here
        //     print('Back button pressed!');
        //     // You can also navigate back using Get.back()
        //     _controller.previousQuestion();
        //   },
        // ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextButton(
                onPressed: _controller.nextQuestion,
                style: ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(
                        Theme.of(context).colorScheme.primary)),
                child: Text(
                  (!_controller.autoAdvance) ? "Next" : "Skip",
                  style:
                      TextStyle(color: Theme.of(context).colorScheme.onPrimary),
                )),
          ),
        ],
      ),
      body: Body(
        key: Key("quizscreen"),
      ),
    );
  }
}
