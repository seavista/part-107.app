import 'dart:io';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'dart:ui' as ui;
import 'package:flutter/rendering.dart';

import 'package:flutter/services.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:path/path.dart';
import 'package:quiz_app/controllers/question_controller.dart';
import 'package:quiz_app/screens/purchase/components/purchase.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../config/routes/app_routes.dart';
import 'package:flutter/material.dart';

import 'package:google_sign_in/google_sign_in.dart';

import 'package:shared_preferences/shared_preferences.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  late bool _darkMode;
  late bool _showExplanations;
  late bool _autoAdvance;
  ThemeMode _themeMode = ThemeMode.system;
  final _auth = FirebaseAuth.instance;
  String? _photoURL;
  String? _username;

  int? _tokenBalance;

  // void toggleTheme(ThemeMode themeMode) {
  //   setState(() {
  //     _themeMode = themeMode;
  //   });
  //   wherZitAppKey.currentState?.toggleTheme(_darkMode);
  // }

  @override
  void initState() {
    // _loadTokenBalance();
    _loadSettings();

    if (_auth.currentUser != null) {
      if (_auth.currentUser!.photoURL != null) {
        _photoURL = _auth.currentUser!.photoURL!;
      }

      if (_auth.currentUser!.displayName != null) {
        _username = _auth.currentUser!.displayName;
      } else {
        _username = _auth.currentUser!.email;
      }
    }

    super.initState();
  }

  // Future<void> _loadTokenBalance() async {
  //   try {
  //     _tokenBalance =
  //         await TokenManager.getTokenBalance(_auth.currentUser!.uid);
  //   } on Exception catch (e) {
  //     print('Error Occurred: $e ');
  //     return null;
  //   }
  // }

  Future<void> _loadSettings() async {
    // //get tokenomics
    // await _loadTokenBalance();

    final prefs = await SharedPreferences.getInstance();
    setState(() {
      _darkMode = prefs.getBool('darkMode') ?? true;
      _autoAdvance = prefs.getBool('autoAdvance') ?? true;
      _showExplanations = prefs.getBool('showExplanations') ?? true;
      // _secureScan = prefs.getBool('secureScan') ?? true;
      // _tokenBalance = _tokenBalance;
    });
  }

  Future<void> _updateSetting(String key, bool value) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool(key, value);
    await _loadSettings(); // Refresh settings after update
  }

  void showLoadingDialog(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible:
          false, // Prevents the dialog from being dismissed by tapping outside of it
      builder: (BuildContext context) {
        return Dialog(
          backgroundColor: Theme.of(context).colorScheme.background,
          child: const Padding(
            padding: EdgeInsets.all(20.0),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                CircularProgressIndicator(), // The animated progress spinner
                SizedBox(
                    width:
                        20), // Provides some spacing between the spinner and the text
                Text(
                    "Working..."), // Optional text to display next to the spinner
              ],
            ),
          ),
        );
      },
    );
  }

// Dismiss the dialog
  void dismissLoadingDialog(BuildContext context) {
    Navigator.of(context, rootNavigator: true).pop();
  }

  void _showSnackbar(BuildContext context, String msg) {
    final snackBar = SnackBar(
      content: Text(msg),
      action: SnackBarAction(
        label: 'OK',
        onPressed: () {
          // Some code to undo the change.
        },
      ),
    );

    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  @override
  Widget build(BuildContext context) {
    //bool isDarkMode = Theme.of(context).brightness == Brightness.dark;
    QuestionController ctrl = Get.put(QuestionController());

    return Scaffold(
      primary: true,
      backgroundColor: Theme.of(context).colorScheme.background,
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            expandedHeight: 200.0,
            backgroundColor: Theme.of(context).colorScheme.primary,
            floating: false,
            pinned: true,
            actions: [
              MouseRegion(
                cursor: SystemMouseCursors.click,
                child: GestureDetector(
                  onTap: () {
                    try {
                      GoogleSignIn().signOut();
                      _auth.signOut().whenComplete(() {
                        print('Sign out complete');
                        //Navigator.pop(context);
                        Navigator.of(context)
                            .pushReplacementNamed(Routes.initial);
                      });
                    } catch (e) {
                      print('Error signing out: $e');
                    }
                  },
                  child: Icon(
                    Icons.logout,
                    color: Theme.of(context).colorScheme.onSecondary,
                    size: 24.0, // Ensure size is set for visibility
                  ),
                ),
              ),
            ],
            flexibleSpace: FlexibleSpaceBar(
              centerTitle: true,
              background: Container(
                margin: EdgeInsets.only(top: 36),
                alignment: Alignment.topCenter,
                child: Text(
                  _username ?? '',
                  style: const TextStyle(fontSize: 20),
                ),
              ),
              title: (mounted && _photoURL != null)
                  ? CircleAvatar(
                      radius: 40,
                      foregroundImage: Image.network(
                        _photoURL!,
                        gaplessPlayback: true,
                        fit: BoxFit.contain,
                      ).image,
                    )
                  : const Icon(
                      Icons.person_pin_rounded,
                      size: 40,
                    ),

              // Placeholder for profile image
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                ListTile(
                  title: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Subscription',
                        style: TextStyle(fontSize: 20),
                      ),
                      if (ctrl.isPaid) Text('')
                    ],
                  ),
                  trailing: (ctrl.isPaid)
                      ? Column(
                          children: [
                            Text('PRO User'),
                            Padding(
                              padding: const EdgeInsets.all(2.0),
                              child: TextButton(
                                style: ButtonStyle(
                                    backgroundColor: MaterialStatePropertyAll(
                                        Theme.of(context).colorScheme.primary)),
                                onPressed: () {
                                  // Create a Uri object with the full URL
                                  final url = Uri.parse(ctrl.orderID);
                                  launchUrl(url,
                                      mode: LaunchMode.platformDefault,
                                      webOnlyWindowName: "_blank");
                                },
                                child: Text(
                                  'View Receipt',
                                  style: TextStyle(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .onPrimary),
                                ),
                              ),
                            ),
                          ],
                        )
                      : Text('Free - Ad Supported'),
                ),
                // ListTile(
                //   title: const Text(
                //     'Tokens',
                //     style: TextStyle(fontSize: 20),
                //   ),
                //   trailing: Text(_tokenBalance.toString()),
                // ),
                // ListTile(
                //   title: const Text(
                //     'Dark Mode',
                //     style: TextStyle(fontSize: 20),
                //   ),
                //   trailing: Switch(
                //     value: _darkMode,
                //     activeColor: Theme.of(context).colorScheme.onSecondary,
                //     inactiveThumbColor:
                //         Theme.of(context).colorScheme.scrim.withAlpha(200),
                //     onChanged: (bool value) {
                //       if (ctrl.isPaid) {
                //         _updateSetting('darkMode', value);
                //       } else {
                //         showFullScreenModal(context);
                //       }
                //       // (value)
                //       //     ? toggleTheme(ThemeMode.dark)
                //       //     : toggleTheme(ThemeMode.light);
                //     },
                //   ),
                // ),
                ListTile(
                  title: const Text(
                    'Auto Advance After Answer',
                    style: TextStyle(fontSize: 20),
                  ),
                  trailing: Switch(
                    value: _autoAdvance,
                    activeColor: Theme.of(context).colorScheme.onSecondary,
                    inactiveThumbColor:
                        Theme.of(context).colorScheme.scrim.withAlpha(200),
                    onChanged: (bool value) {
                      if (ctrl.isPaid) {
                        _updateSetting('autoAdvance', value);
                      } else {
                        showFullScreenModal(context);
                      }
                    },
                  ),
                ),
                ListTile(
                  title: const Text(
                    'Show Explanations Button',
                    style: TextStyle(fontSize: 20),
                  ),
                  trailing: Switch(
                    value: _showExplanations,
                    activeColor: Theme.of(context).colorScheme.onSecondary,
                    inactiveThumbColor:
                        Theme.of(context).colorScheme.scrim.withAlpha(200),
                    onChanged: (bool value) {
                      if (ctrl.isPaid) {
                        _updateSetting('showExplanations', value);
                      } else {
                        showFullScreenModal(context);
                      }
                    },
                  ),
                ),
                // ListTile(
                //   title: const Text(
                //     'Secure Scan',
                //     style: TextStyle(fontSize: 20),
                //   ),
                //   trailing: Switch(
                //     value: _secureScan,
                //     onChanged: (bool value) {
                //       _updateSetting('secureScan', value);
                //     },
                //   ),
                // ),
                // Container(
                //   margin: const EdgeInsets.all(30),
                //   child: ListTile(
                //     tileColor: Theme.of(context).colorScheme.primaryContainer,
                //     title: const Text(
                //       'Backup',
                //       textAlign: TextAlign.center,
                //       style: TextStyle(fontSize: 20),
                //     ),
                //     onTap: () async {},
                //   ),
                // ),
                // // Add more settings options as needed
                // Container(
                //   margin: const EdgeInsets.all(30),
                //   child: ListTile(
                //     tileColor: Theme.of(context).colorScheme.primaryContainer,
                //     title: const Text(
                //       'Import',
                //       textAlign: TextAlign.center,
                //       style: TextStyle(fontSize: 20),
                //     ),
                //     onTap: () async {},
                //   ),
                // ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
