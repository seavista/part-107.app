import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:quiz_app/config/routes/app_routes.dart';
import 'package:quiz_app/constants.dart';
import 'package:quiz_app/controllers/question_controller.dart';
import 'package:quiz_app/screens/quiz/quiz_screen.dart';
import 'package:url_launcher/url_launcher.dart';

import 'package:cloud_functions/cloud_functions.dart';

class FeatureItem extends StatelessWidget {
  final IconData icon;
  final String title;
  final String description;

  const FeatureItem(
      {required this.icon, required this.title, required this.description});

  @override
  Widget build(BuildContext context) {
    print(icon);
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(
            Icons.check,
            size: 28,
            color: Colors.green,
          ),
          SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  description,
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class FullScreenModal extends StatelessWidget {
  Future<Uri?> createPaymentLink() async {
    final url = Uri.parse(
        'https://us-central1-part-107-82ca6.cloudfunctions.net/createPaymentLink?user_id=${FirebaseAuth.instance.currentUser!.email}');

    try {
      // final response = await http.post(
      //   url,
      //   headers: {'Content-Type': 'application/json'},
      //   body: json.encode({
      //     'userEmail': FirebaseAuth.instance.currentUser!.email,
      //     'origin': kIsWeb ? Uri.base.origin : 'https://part-107.app'
      //   }),
      // );

      final response = await http.get(
        url,
        headers: {
          'Content-Type': 'application/json',
          'Access-Control-Allow-Origin': '*'
        },
      );

      if (response.statusCode == 200) {
        final responseData = json.decode(response.body);
        final Uri paymentLink = responseData['url'];
        // Open the payment link in the browser
        // You can use url_launcher or any other method to open the link
        print('Payment link: $paymentLink');
        return paymentLink;
      } else {
        print('Failed to create payment link');
        return null;
      }
    } on Exception catch (e) {
      print(e);
    }
  }

  final Uri _url = Uri.parse(
      'https://buy.stripe.com/test_bIY5mK5PCdo83WE4gh?user_id=${FirebaseAuth.instance.currentUser!.email}');

  Future<void> _launchUrl() async {
    //final Uri? _url = await createPaymentLink();

    //launches an url by address
    if (!await launchUrl(
      _url!,
      mode: LaunchMode.inAppWebView,
      webOnlyWindowName: "_self",
      webViewConfiguration: WebViewConfiguration(
        enableJavaScript: true,
        enableDomStorage: true,
        //headers: <String, String>{'authorization': authToken.toString()},
      ),
    )) {
      throw Exception('Cannnot launch $_url');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context)
            .colorScheme
            .background, // Add a semi-transparent background
        body: GestureDetector(
          onTap: () {
            Navigator.of(context)
                .pop(); // Dismiss the dialog when tapping outside the content
          },
          child: Center(
            child: GestureDetector(
              onTap:
                  () {}, // Prevent dismissing when tapping inside the content
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
                    Container(
                      width: MediaQuery.of(context).size.width / 2,
                      child: Image.asset(
                        'assets/images/logo.png', // Replace with your image asset path
                        fit: BoxFit.scaleDown,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Unlock Full Lifetime Access Pass only \$9.95',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color:
                                    Theme.of(context).colorScheme.background),
                          ),
                          SizedBox(height: 10),
                          FeatureItem(
                            icon: Icons.question_answer,
                            title: 'Expanded Question Bank',
                            description:
                                'Gain access to over a 1000 questions, ensuring comprehensive coverage of all exam topics.',
                          ),
                          FeatureItem(
                            icon: Icons.tune,
                            title: 'Customizable Test Options',
                            description:
                                'Tailor your practice tests to focus on specific areas or difficulty levels, enhancing your study efficiency.',
                          ),
                          FeatureItem(
                            icon: Icons.analytics,
                            title: 'Advanced Analytics',
                            description:
                                'Track your progress with detailed performance reports and identify areas for improvement.',
                          ),
                          // FeatureItem(
                          //   icon: Icons.offline_pin,
                          //   title: 'Offline Access',
                          //   description:
                          //       'Study anytime, anywhere with offline mode, perfect for on-the-go learning.',
                          // ),
                          // FeatureItem(
                          //   icon: Icons.support_agent,
                          //   title: 'Priority Support',
                          //   description:
                          //       'Get quick assistance and expert guidance from our dedicated support team.',
                          // ),
                          FeatureItem(
                            icon: Icons.no_accounts,
                            title: 'Ad-Free Experience',
                            description:
                                'Enjoy an uninterrupted study experience with no ads.',
                          ),
                        ],
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
                            child: Text('Get Premium Access'),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ));
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
  void initState() {
    // ctrl.updateNumberOfQuestions(_currentValue.toInt());
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
            padding: EdgeInsets.all(10),
            width: (MediaQuery.of(context).size.width > 800)
                ? 500
                : MediaQuery.of(context).size.width / 1.5,
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
  const WelcomeScreen();

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset("assets/images/bg.png", fit: BoxFit.cover),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
              child: ListView(
                children: [
                  Container(
                    alignment: Alignment.topLeft,
                    padding: EdgeInsets.all(10),
                    height: MediaQuery.of(context).size.height / 5,
                    child: Image.asset("assets/images/logo.png",
                        fit: BoxFit.fitHeight),
                  ),
                  SizedBox(height: kDefaultPadding * 2),
                  IconButtonGrid(),
                  SizedBox(height: kDefaultPadding),
                  MouseRegion(
                    cursor: SystemMouseCursors.click,
                    child: Container(
                      width: MediaQuery.of(context).size.width / 4,
                      alignment: Alignment.center,
                      padding: EdgeInsets.all(kDefaultPadding * 0.75),
                      decoration: BoxDecoration(
                        gradient: kPrimaryGradient,
                        borderRadius: BorderRadius.all(Radius.circular(12)),
                      ),
                      child: GestureDetector(
                        onTap: () async {
                          //cannot use delete??

                          Get.to(() => QuizScreen(), routeName: "/QuizScreen");
                          Get.reload<QuestionController>();
                        },
                        child: Text(
                          "Start the Test",
                          style: Theme.of(context)
                              .textTheme
                              .button!
                              .copyWith(color: Colors.black),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: kDefaultPadding * 2),
                  IconButton.filled(
                      onPressed: () {
                        FirebaseAuth.instance.signOut();
                        Navigator.pushReplacementNamed(
                            context, Routes.appWelcome);
                      },
                      icon: Icon(Icons.logout))
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
