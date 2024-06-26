import 'dart:convert';
import 'package:http/http.dart' as http;
import 'dart:html' as html;
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:quiz_app/config/routes/app_routes.dart';
import 'package:quiz_app/screens/welcome/welcome_screen.dart';
import 'package:url_launcher/url_launcher.dart';

class FullScreenModal extends StatelessWidget {
  Future<Uri?> createPaymentLink() async {
    String host = html.window.location.host;
    print('Current host: $host');

    final url = Uri.parse(
        'https://us-central1-part-107-82ca6.cloudfunctions.net/createPaymentLink?user_id=${FirebaseAuth.instance.currentUser!.email}');

    print(url);

    try {
      final response =
          await http.get(url, headers: {'Content-Type': 'application/json'});

      if (response.statusCode == 200) {
        final responseData = json.decode(response.body);
        Uri paymentLink = Uri.parse(responseData['url']);

        final stripeSessionId = responseData['sessionId'];
        print('Stripe sessionId: $stripeSessionId');

        print('Payment link: $paymentLink');
        return paymentLink;
      } else {
        print('Failed to create payment link');
        return null;
      }
    } on Exception catch (e) {
      print(e);
      return null;
    }
  }

  Future<void> _launchUrl() async {
    final Uri? _url = await createPaymentLink();
    print(_url);

    if (!await launchUrl(
      _url!,
      mode: LaunchMode.inAppWebView,
      webOnlyWindowName: "_self",
      webViewConfiguration: WebViewConfiguration(
        enableJavaScript: true,
        enableDomStorage: true,
      ),
    )) {
      throw Exception('Cannot launch $_url');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: GestureDetector(
        onTap: () {
          Navigator.of(context).pop();
        },
        child: Center(
          child: GestureDetector(
            onTap: () {},
            child: Container(
              padding: EdgeInsets.all(16.0),
              margin: EdgeInsets.symmetric(horizontal: 20.0),
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(12.0),
              ),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width / 2,
                      child: Image.asset(
                        'assets/images/logo.png',
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
                            title: 'Expanded Question Count',
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
                              Navigator.of(context).pop();
                            },
                            child: Text('Cancel'),
                          ),
                          (FirebaseAuth.instance.currentUser!.isAnonymous)
                              ? ElevatedButton(
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                    FirebaseAuth.instance.signOut();
                                    Navigator.of(context)
                                        .pushReplacementNamed(Routes.initial);
                                  },
                                  child: Text('Login Required'),
                                )
                              : ElevatedButton(
                                  onPressed: () async {
                                    Stack(
                                      children: [
                                        Opacity(
                                          opacity: 0.5,
                                          child: ModalBarrier(
                                            color: Colors.grey,
                                            dismissible: false,
                                          ),
                                        ),
                                        Center(
                                          child: CircularProgressIndicator(),
                                        ),
                                      ],
                                    );
                                    await _launchUrl();
                                    Navigator.of(context).pop();
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
        ),
      ),
    );
  }
}

void showFullScreenModal(BuildContext context) {
  showDialog(
    context: context,
    barrierDismissible: true,
    builder: (BuildContext context) {
      return WillPopScope(
        onWillPop: () async => true,
        child: FullScreenModal(),
      );
    },
  );
}
