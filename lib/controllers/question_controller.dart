import 'dart:math';

import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get/state_manager.dart';
import 'package:quiz_app/models/Questions.dart';
import 'package:quiz_app/screens/score/score_screen.dart';

// We use get package for our state management

class QuestionController extends GetxController
    with GetSingleTickerProviderStateMixin {
  // Lets animate our progress bar

  late AnimationController _animationController;
  late Animation _animation;
  // so that we can access our animation outside
  Animation get animation => this._animation;

  late PageController _pageController;
  PageController get pageController => this._pageController;

  List<Question> _questions = [];

  List<Question> get questions => this._questions;

  bool _isAnswered = false;
  bool get isAnswered => this._isAnswered;

  late int _correctAns;
  int get correctAns => this._correctAns;

  late int _selectedAns;
  int get selectedAns => this._selectedAns;

  // for more about obs please check documentation
  RxInt _questionNumber = 1.obs;
  RxInt get questionNumber => this._questionNumber;

  int _numOfCorrectAns = 0;
  int get numOfCorrectAns => this._numOfCorrectAns;

  RxInt _numOfQuestions = 0.obs;
  RxInt get numOfQuestions => this._numOfQuestions;
  void updateNumberOfQuestions(int count) {
    _numOfQuestions.value = count;
  }

// List to keep track of the toggle states, initialized to true
  List<bool> isSelected = List.generate(7, (index) {
    if (index == 0) {
      return true;
    } else {
      return false;
    }
  });

  // called immediately after the widget is allocated memory
  @override
  void onInit() async {
    // Shuffle the sample_data
    // Shuffle the sample_data
    var random = Random();
    var tempList = await buildQuestions(); // Create a temporary list
    tempList.shuffle(random); // Shuffle the temporary list

    // Map the shuffled data to the questions list
    _questions = tempList
        .map(
          (question) => Question(
            id: question['id'],
            question: question['question'],
            options: question['options'],
            answer: question['answer_index'],
          ),
        )
        .take(_numOfQuestions.value)
        .toList();

    // Our animation duration is 60 s
    // so our plan is to fill the progress bar within 60s
    _animationController =
        AnimationController(duration: Duration(seconds: 60), vsync: this);
    _animation = Tween<double>(begin: 0, end: 1).animate(_animationController)
      ..addListener(() {
        // update like setState
        update();
      });

    // start our animation
    // Once 60s is completed go to the next qn
    _animationController.forward().whenComplete(nextQuestion);
    _pageController = PageController();

    super.onInit();
  }

  Future<List<dynamic>> buildQuestions() async {
    List retData = [];
    if (isSelected[0] == true) {
      return sample_data.toList();
    } else {
      if (isSelected[1] == true) {
        retData.addAll(loading_and_performance_data);
      }

      if (isSelected[2] == true) {
        retData.addAll(airspace_data);
      }

      if (isSelected[3] == true) {
        retData.addAll(operations_data);
      }

      if (isSelected[4] == true) {
        retData.addAll(weather_data);
      }

      if (isSelected[5] == true) {
        retData.addAll(risk_management_data);
      }

      if (isSelected[6] == true) {
        retData.addAll(regulations_data);
      }
    }

    return retData.toList();
  }

  // // called just before the Controller is deleted from memory
  @override
  void onClose() {
    super.onClose();
    _animationController.dispose();
    _pageController.dispose();
  }

  void checkAns(Question question, int selectedIndex) {
    // because once user press any option then it will run
    _isAnswered = true;
    _correctAns = question.answer;
    _selectedAns = selectedIndex;

    if (_correctAns == _selectedAns) _numOfCorrectAns++;

    // It will stop the counter
    _animationController.stop();
    update();

    // Once user select an ans after 3s it will go to the next qn
    Future.delayed(Duration(seconds: 3), () {
      nextQuestion();
    });
  }

  void nextQuestion() {
    if (_questionNumber.value != _questions.length) {
      _isAnswered = false;
      _pageController.nextPage(
          duration: Duration(milliseconds: 250), curve: Curves.ease);

      // Reset the counter
      _animationController.reset();

      // Then start it again
      // Once timer is finish go to the next qn
      _animationController.forward().whenComplete(nextQuestion);
    } else {
      // Get package provide us simple way to navigate another page
      Get.to(ScoreScreen());
    }
  }

  void updateTheQnNum(int index) {
    _questionNumber.value = index + 1;
  }
}
