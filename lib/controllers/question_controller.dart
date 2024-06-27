import 'dart:math';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quiz_app/config/routes/app_routes.dart';
import 'package:quiz_app/models/Questions.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';

class QuestionController extends GetxController
    with GetSingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation _animation;
  Animation get animation => this._animation;

  late PageController _pageController;
  PageController get pageController => this._pageController;

  List<Question> _questions = [];
  List<Question> get questions => this._questions;

  bool _isPaid = false;
  bool get isPaid => this._isPaid;
  void updateIsPaid(bool flag) {
    _isPaid = flag;
    update();
  }

  String _orderID = "";
  String get orderID => this._orderID;
  void updateOrderId(String orderId) {
    _orderID = orderId;
    update();
  }

  bool get isLastQuestion => (questionNumber == questions.length);

  bool _isAnswered = false;
  bool get isAnswered => this._isAnswered;

  late int _correctAns;
  int get correctAns => this._correctAns;

  late int _selectedAns;
  int get selectedAns => this._selectedAns;

  RxInt _questionNumber = 1.obs;
  RxInt get questionNumber => this._questionNumber;

  RxInt _numOfCorrectAns = 0.obs;
  RxInt get numOfCorrectAns => this._numOfCorrectAns;
  void updateNumberCorrectAnswers(int count) {
    _numOfCorrectAns.value = count;
    initQuestions();
  }

  RxInt _numOfIncorrectAns = 0.obs;
  RxInt get numOfIncorrectAns => this._numOfIncorrectAns;

  RxInt _numOfQuestions = 0.obs;
  RxInt get numOfQuestions => this._numOfQuestions;
  void updateNumberOfQuestions(int count) {
    _numOfQuestions.value = count;
    initQuestions();
  }

  bool _showExplanations = false;
  bool get showExplanations => this._showExplanations;

  bool _autoAdvance = false;
  bool get autoAdvance => this._autoAdvance;

  List<bool> isSelected = List.generate(7, (index) {
    if (index == 0) {
      return true;
    } else {
      return false;
    }
  });

  Map<String, Map<String, int>> _performanceByTopic = {};
  Map<String, Map<String, int>> get performanceByTopic => _performanceByTopic;

  @override
  void onInit() async {
    super.onInit();
    print('onInit called'); // Logging
    await _loadSettings();
    _initializeController();
  }

  void _initializeController() {
    print('Initializing controller'); // Logging
    _animationController =
        AnimationController(duration: Duration(minutes: 1), vsync: this);
    _animation = Tween<double>(begin: 0, end: 1).animate(_animationController)
      ..addListener(() {
        update();
      });

    _pageController = PageController();
  }

  Future<void> _loadSettings() async {
    final prefs = await SharedPreferences.getInstance();
    _showExplanations = prefs.getBool('showExplanations') ?? false;
    _autoAdvance = prefs.getBool('autoAdvance') ?? false;
    update();
  }

  Future<void> initQuestions() async {
    print('initQuestions called'); // Logging
    _animationController.stop();
    resetQuestions();

    var random = Random(DateTime.now().millisecondsSinceEpoch);
    var tempList = await buildQuestions();

    print('Total questions fetched: ${tempList.length}'); // Logging

    tempList.shuffle(random);

    // Function to shuffle options and update answer_index
    Map<String, dynamic> shuffleOptions(Map<String, dynamic> question) {
      List<String> options = List<String>.from(question['options']);
      int correctIndex = question['answer_index'];
      String correctAnswer = options[correctIndex];

      options.shuffle(random);

      int newCorrectIndex = options.indexOf(correctAnswer);

      question['options'] = options;
      question['answer_index'] = newCorrectIndex;

      return question;
    }

    // Apply shuffling to each question
    tempList = tempList.map((question) => shuffleOptions(question)).toList();

    _questions = tempList
        .map(
          (question) => Question(
              id: question['id'],
              question: question['question'],
              options: question['options'],
              answer: question['answer_index'],
              figure: question['figure'],
              category: question['category']),
        )
        .take(_numOfQuestions.value)
        .toList();

    print('Total questions initialized: ${_questions.length}'); // Logging

    if (_questions.isNotEmpty) {
      await _animationController.forward().whenComplete(nextQuestion);
    } else {
      print('No questions to initialize.');
    }
  }

  void resetQuestions() {
    print('resetQuestions called'); // Logging
    _isAnswered = false;
    _questionNumber = 1.obs;
    _questions = [];
    _numOfCorrectAns = 0.obs;
    _numOfIncorrectAns = 0.obs;
    _performanceByTopic.clear();
    update();
  }

  Future<List<Map<String, dynamic>>> buildQuestions() async {
    print('buildQuestions called'); // Logging
    List<Map<String, dynamic>> retData = [];
    if (isSelected[0] == true) {
      //100 question merged
      retData.addAll(sample_data.map((q) =>
          Map<String, dynamic>.from(q)..['category'] = q['category'] ?? "All"));

      retData.addAll(loading_and_performance_data.map((q) =>
          Map<String, dynamic>.from(q)
            ..['category'] = 'Loading and Performance'));
      retData.addAll(airspace_data
          .map((q) => Map<String, dynamic>.from(q)..['category'] = 'Airspace'));
      retData.addAll(operations_data.map(
          (q) => Map<String, dynamic>.from(q)..['category'] = 'Operations'));
      retData.addAll(airspace_weather_minimums_charts_data.map((q) =>
          Map<String, dynamic>.from(q)
            ..['category'] = 'Airspace Weather Minimums and Charts'));
      retData.addAll(risk_management_data.map((q) =>
          Map<String, dynamic>.from(q)..['category'] = 'Risk Management'));
      retData.addAll(regulations_data.map(
          (q) => Map<String, dynamic>.from(q)..['category'] = 'Regulations'));
    } else {
      if (isSelected[1] == true) {
        retData.addAll(loading_and_performance_data.map((q) =>
            Map<String, dynamic>.from(q)
              ..['category'] = 'Loading and Performance'));
      }
      if (isSelected[2] == true) {
        retData.addAll(airspace_data.map(
            (q) => Map<String, dynamic>.from(q)..['category'] = 'Airspace'));
      }
      if (isSelected[3] == true) {
        retData.addAll(operations_data.map(
            (q) => Map<String, dynamic>.from(q)..['category'] = 'Operations'));
      }
      if (isSelected[4] == true) {
        retData.addAll(airspace_weather_minimums_charts_data.map((q) =>
            Map<String, dynamic>.from(q)
              ..['category'] = 'Airspace Weather Minimums and Charts'));
      }
      if (isSelected[5] == true) {
        retData.addAll(risk_management_data.map((q) =>
            Map<String, dynamic>.from(q)..['category'] = 'Risk Management'));
      }
      if (isSelected[6] == true) {
        retData.addAll(regulations_data.map(
            (q) => Map<String, dynamic>.from(q)..['category'] = 'Regulations'));
      }
    }

    print('Questions built: ${retData.length}'); // Logging
    return retData;
  }

  void checkAns(Question question, int selectedIndex) async {
    _isAnswered = true;
    _correctAns = question.answer;
    _selectedAns = selectedIndex;

    if (_correctAns == _selectedAns) {
      _numOfCorrectAns++;
      _updatePerformanceByTopic(question.category, true);
    } else {
      _numOfIncorrectAns++;
      _updatePerformanceByTopic(question.category, false);
    }

    // Retrieve and update the performance data
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? jsonString = prefs.getString('performanceByTopic');
    Map<String, Map<String, int>> performanceData = {};

    if (jsonString != null) {
      Map<String, dynamic> jsonMap = jsonDecode(jsonString);
      performanceData = jsonMap
          .map((key, value) => MapEntry(key, Map<String, int>.from(value)));
    }

    _performanceByTopic.forEach((key, value) {
      if (!performanceData.containsKey(key)) {
        performanceData[key] = {'correct': 0, 'incorrect': 0};
      }
      performanceData[key]!['correct'] =
          performanceData[key]!['correct']! + value['correct']!;
      performanceData[key]!['incorrect'] =
          performanceData[key]!['incorrect']! + value['incorrect']!;
    });

    // Save the updated performance data
    await prefs.setString('performanceByTopic', jsonEncode(performanceData));

    _animationController.stop();
    update();

    if (_autoAdvance) {
      Future.delayed(Duration(seconds: 3), () {
        try {
          nextQuestion();
        } catch (e) {
          print("Error during nextQuestion: $e");
        }
      });
    }
  }

  void _updatePerformanceByTopic(String category, bool isCorrect) {
    if (!_performanceByTopic.containsKey(category)) {
      _performanceByTopic[category] = {'correct': 0, 'incorrect': 0};
    }
    if (isCorrect) {
      _performanceByTopic[category]!['correct'] =
          _performanceByTopic[category]!['correct']! + 1;
    } else {
      _performanceByTopic[category]!['incorrect'] =
          _performanceByTopic[category]!['incorrect']! + 1;
    }
  }

  void previousQuestion() async {
    await _pageController.previousPage(
      duration: Duration(milliseconds: 250),
      curve: Curves.ease,
    );
  }

  void nextQuestion() async {
    try {
      if (_questionNumber.value == _questions.length) {
        _animationController.stop();

        await Navigator.pushReplacementNamed(Get.context!, Routes.appScore);

        return;
      }

      _isAnswered = false;

      await _pageController.nextPage(
        duration: Duration(milliseconds: 250),
        curve: Curves.ease,
      );

      _animationController.reset();

      await _animationController.forward().whenComplete(() {
        nextQuestion();
      });
    } catch (e) {
      print("Error in nextQuestion: $e");
    }
  }

  void updateTheQnNum(int index) {
    _questionNumber.value = index + 1;
  }

  final List<Map<String, dynamic>> _iconsAndLabels = [
    {'icon': Icons.check_box, 'label': 'All Topics'},
    {'icon': Icons.speed, 'label': 'Loading and Performance'},
    {'icon': Icons.flight, 'label': 'Airspace'},
    {'icon': Icons.flight_takeoff, 'label': 'Operations and Procedures'},
    {'icon': Icons.cloud, 'label': 'Weather'},
    {'icon': Icons.warning, 'label': 'Risk Management'},
    {'icon': Icons.rule, 'label': 'Regulations'},
  ];

  List<Widget> generateSummaryReport() {
    List<Widget> cards = [];

    _performanceByTopic.forEach((topic, performance) {
      int correct = performance['correct']!;
      int incorrect = performance['incorrect']!;
      int total = correct + incorrect;
      double percentage = total > 0 ? (correct / total) * 100 : 0;

      Color backgroundColor;
      IconData iconData;

      // Customize background color and icon based on the topic
      switch (topic) {
        case 'All Topics':
          backgroundColor = Color(0xFFFD1960);
          iconData = Icons.check_box;
          break;
        case 'Loading and Performance':
          backgroundColor = Color(0xFF29D3E8);
          iconData = Icons.speed;
          break;
        case 'Airspace':
          backgroundColor = Color(0xFF18C737);
          iconData = Icons.flight;
          break;
        case 'Airspace Weather Minimums and Charts':
          backgroundColor = Color(0xFF18C737);
          iconData = Icons.flight;
          break;
        case 'Operations and Procedures':
          backgroundColor = Color(0xFFFFCC05);
          iconData = Icons.flight_takeoff;
          break;
        case 'Weather':
          backgroundColor = Color(0xFF29D3E8);
          iconData = Icons.cloud;
          break;
        case 'Risk Management':
          backgroundColor = Color(0xFFFD1960);
          iconData = Icons.warning;
          break;
        case 'Regulations':
          backgroundColor = Color(0xFF18C737);
          iconData = Icons.rule;
          break;
        default:
          backgroundColor = Colors.grey;
          iconData = Icons.help_outline;
          break;
      }

      cards.add(Card(
        color: backgroundColor,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                children: [
                  Icon(iconData, color: Colors.white),
                  SizedBox(width: 8),
                  Text(
                    topic,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16),
              Text(
                '${percentage.toStringAsFixed(2)}%',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 16),
              Text(
                '$correct/$total correct',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ),
      ));
    });

    return cards;
  }
}
