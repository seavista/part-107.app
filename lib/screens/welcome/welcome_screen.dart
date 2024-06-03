import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:quiz_app/constants.dart';
import 'package:quiz_app/controllers/question_controller.dart';
import 'package:quiz_app/screens/quiz/quiz_screen.dart';
import 'package:url_launcher/url_launcher.dart';

class FullScreenModal extends StatelessWidget {
  final Uri _url = Uri.parse('https://buy.stripe.com/test_bIY5mK5PCdo83WE4gh');

  Future<void> _launchUrl() async {
    //launches an url by address
    if (!await launchUrl(_url)) {
      throw Exception('Cannnot launch $_url');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
          Colors.black.withOpacity(0.7), // Add a semi-transparent background
      body: GestureDetector(
        onTap: () {
          Navigator.of(context)
              .pop(); // Dismiss the dialog when tapping outside the content
        },
        child: Center(
          child: GestureDetector(
            onTap: () {}, // Prevent dismissing when tapping inside the content
            child: Container(
              padding: EdgeInsets.all(16.0),
              margin: EdgeInsets.symmetric(horizontal: 20.0),
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(12.0),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset(
                    'assets/icons/logo.png', // Replace with your image asset path
                    fit: BoxFit.cover,
                  ),
                  SizedBox(height: 20.0),
                  Text(
                    'Unlock Full Access',
                    style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 20.0),
                  Container(
                    width: 300,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ElevatedButton(
                          style: ButtonStyle(
                              backgroundColor:
                                  MaterialStatePropertyAll(Colors.grey)),
                          onPressed: () {
                            // Implement your unlock full access logic here
                            Navigator.of(context)
                                .pop(); // Dismiss the dialog when the button is pressed
                          },
                          child: Text('Cancel'),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            // Implement your unlock full access logic here
                            Navigator.of(context).pop();
                            _launchUrl();
                          },
                          child: Text('Unlock Now'),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

void showFullScreenModal(BuildContext context) {
  showDialog(
    context: context,
    barrierDismissible: true, // Allow dismissing by tapping outside the dialog
    builder: (BuildContext context) {
      return WillPopScope(
        onWillPop: () async => true, // Allow dismissing with the back button
        child: FullScreenModal(),
      );
    },
  );
}

class CustomTrackShape extends RoundedRectSliderTrackShape {
  @override
  Rect getPreferredRect({
    required RenderBox parentBox,
    Offset offset = Offset.zero,
    required SliderThemeData sliderTheme,
    bool isEnabled = false,
    bool isDiscrete = false,
  }) {
    final double trackHeight = 36.0; // Set your desired track height here
    final double trackLeft = offset.dx;
    final double trackTop =
        offset.dy + (parentBox.size.height - trackHeight) / 2;
    final double trackWidth = parentBox.size.width;
    return Rect.fromLTWH(trackLeft, trackTop, trackWidth, trackHeight);
  }
}

class IconButtonGrid extends StatefulWidget {
  @override
  _IconButtonGridState createState() => _IconButtonGridState();
}

class _IconButtonGridState extends State<IconButtonGrid> {
  double _currentValue = 0;

  // List of icons and labels
  final List<Map<String, dynamic>> _iconsAndLabels = [
    {'icon': Icons.check_box, 'label': 'All Topics'},
    {'icon': Icons.speed, 'label': 'Loading and Performance'},
    {'icon': Icons.flight, 'label': 'Airspace'},
    {'icon': Icons.flight_takeoff, 'label': 'Operations and Procedures'},
    {'icon': Icons.cloud, 'label': 'Weather'},
    {'icon': Icons.warning, 'label': 'Risk Management'},
    {'icon': Icons.rule, 'label': 'Regulations'},
  ];

  final ctrl = Get.put(QuestionController());

  @override
  void intiState() {
    ctrl.updateNumberOfQuestions(_currentValue.toInt());
    ctrl.onInit();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    //final ctrl = Get.put(QuestionController());

    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Select Test Topics',
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 20),
          Wrap(
            spacing: 10.0,
            runSpacing: 10.0,
            children: List.generate(_iconsAndLabels.length, (index) {
              return GestureDetector(
                onTap: () {
                  if (index == 0) {
                    ctrl.isSelected =
                        List.generate(7, (_) => ctrl.isSelected[index]);
                  } else {
                    ctrl.isSelected[0] = false;
                  }
                  setState(() {
                    ctrl.isSelected[index] = !ctrl.isSelected[index];
                  });

                  ctrl.onInit();
                },
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width > 600
                          ? 100.0
                          : 80.0,
                      height: MediaQuery.of(context).size.width > 600
                          ? 100.0
                          : 80.0,
                      decoration: BoxDecoration(
                        color:
                            ctrl.isSelected[index] ? Colors.green : Colors.grey,
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        ctrl.isSelected[index]
                            ? _iconsAndLabels[index]['icon']
                            : _iconsAndLabels[index]['icon'],
                        color: Colors.white,
                        size: 50.0,
                      ),
                    ),
                    SizedBox(height: 5.0),
                    Container(
                      width: MediaQuery.of(context).size.width > 600
                          ? 80.0
                          : 100.0,
                      child: Text(
                        _iconsAndLabels[index]['label'],
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: ctrl.isSelected[index]
                              ? Colors.green
                              : Colors.white,
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              );
            }),
          ),
          SizedBox(
            height: 50,
          ),
          Container(
            width: (MediaQuery.of(context).size.width > 800)
                ? 500
                : MediaQuery.of(context).size.width / 1.1,
            child: Column(
              children: [
                Text(
                  '$_currentValue Questions',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                SliderTheme(
                  data: SliderTheme.of(context).copyWith(
                      thumbColor: Theme.of(context).colorScheme.inversePrimary,
                      trackHeight:
                          16.0, // This does not affect the height of the track, but you can set it for consistency
                      trackShape: CustomTrackShape(),
                      thumbShape:
                          RoundSliderThumbShape(enabledThumbRadius: 24)),
                  child: Slider(
                    value: _currentValue,
                    min: 0,
                    max: 100,
                    divisions: 100,
                    label: _currentValue.round().toString(),
                    onChanged: (double value) {
                      final intVal = value.ceil();
                      ctrl.updateNumberOfQuestions(intVal);

                      if (intVal > 20) {
                        showFullScreenModal(context);
                      } else {
                        setState(() {
                          _currentValue = intVal.toDouble();
                        });
                      }

                      ctrl.onInit();
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class WelcomeScreen extends StatefulWidget {
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          SvgPicture.asset("assets/icons/bg.svg", fit: BoxFit.cover),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
              child: ListView(
                children: [
                  Container(
                    padding: EdgeInsets.all(10),
                    width: MediaQuery.of(context).size.width / 2,
                    child: Image.asset("assets/icons/logo.png",
                        fit: BoxFit.scaleDown),
                  ),
                  SizedBox(height: kDefaultPadding * 2),
                  IconButtonGrid(),
                  SizedBox(height: kDefaultPadding),
                  InkWell(
                    onTap: () => Get.to(QuizScreen()),
                    child: Container(
                      width: MediaQuery.of(context).size.width / 2,
                      alignment: Alignment.center,
                      padding: EdgeInsets.all(kDefaultPadding * 0.75), // 15
                      decoration: BoxDecoration(
                        gradient: kPrimaryGradient,
                        borderRadius: BorderRadius.all(Radius.circular(12)),
                      ),
                      child: Text(
                        "Start the Test",
                        style: Theme.of(context)
                            .textTheme
                            .button!
                            .copyWith(color: Colors.black),
                      ),
                    ),
                  ),
                  SizedBox(height: kDefaultPadding * 2),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
