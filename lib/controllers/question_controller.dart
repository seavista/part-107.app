import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get/state_manager.dart';
import 'package:quiz_app/config/routes/app_routes.dart';
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
    //rebuild questions
    initQuestions();
  }

// List to keep track of the toggle states, initialized to true
  List<bool> isSelected = List.generate(7, (index) {
    if (index == 0) {
      return true;
    } else {
      return false;
    }
  });

  @override
  void onInit() async {
    _initializeController(); // Add this line
    super.onInit();
  }

// Add this new method to handle initialization
  void _initializeController() {
    _animationController =
        AnimationController(duration: Duration(minutes: 1), vsync: this);
    _animation = Tween<double>(begin: 0, end: 1).animate(_animationController)
      ..addListener(() {
        update();
      });

    _animationController.forward().whenComplete(nextQuestion);
    _pageController = PageController(); // Ensure this line is here
  }

  Future<void> initQuestions() async {
    //clear previous answers
    resetQuestions();

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

    _animationController.repeat();
  }

  void resetQuestions() {
    //clear previous answers
    _isAnswered = false;
    _questionNumber = 1.obs;
    _questions = [];
    _numOfCorrectAns = 0;
    update();
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

    // Once user select an ans after 2s it will go to the next qn
    Future.delayed(Duration(seconds: 2), () {
      nextQuestion();
    });
  }

  void nextQuestion() {
    if (_questionNumber.value == _questions.length) {
      Get.to(ScoreScreen(), routeName: "/ScoreScreen");

      //GetPage(name: '/ScoreScreen', page: () => ScoreScreen());
    }

    _isAnswered = false;
    _pageController.nextPage(
        duration: Duration(milliseconds: 250), curve: Curves.ease);

    // Reset the counter
    _animationController.reset();

    // Then start it again
    // Once timer is finish go to the next qn
    _animationController.forward().whenComplete(nextQuestion);
  }

  void updateTheQnNum(int index) {
    _questionNumber.value = index + 1;
  }
}
