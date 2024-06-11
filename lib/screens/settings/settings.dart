import 'dart:io';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'dart:ui' as ui;
import 'package:flutter/rendering.dart';

import 'package:flutter/services.dart';
import 'package:flutter/services.dart';
import 'package:path/path.dart';

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
  bool _darkMode = true;
  bool _hintsEnabled = true;
  bool _secureScan = true;
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
      // _hintsEnabled = prefs.getBool('hintsEnabled') ?? true;
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

    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            expandedHeight: 200.0,
            backgroundColor: Theme.of(context).colorScheme.primary,
            floating: false,
            pinned: true,
            actions: [
              SizedBox(width: 15),
              GestureDetector(
                  onTap: () async {
                    // Implement your backup function here
                    await GoogleSignIn().signOut();
                    await _auth.signOut();
                    Navigator.pop(context);
                    Navigator.pushReplacementNamed(context, Routes.appWelcome);
                  },
                  child: Icon(
                    Icons.logout_outlined,
                    color: Theme.of(context).colorScheme.background,
                  ))
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
                  title: const Text(
                    'Subscription',
                    style: TextStyle(fontSize: 20),
                  ),
                  trailing: Text('Free - Ad Supported'),
                ),
                // ListTile(
                //   title: const Text(
                //     'Tokens',
                //     style: TextStyle(fontSize: 20),
                //   ),
                //   trailing: Text(_tokenBalance.toString()),
                // ),
                ListTile(
                  title: const Text(
                    'Dark Mode',
                    style: TextStyle(fontSize: 20),
                  ),
                  trailing: Switch(
                    value: _darkMode,
                    onChanged: (bool value) {
                      _updateSetting('darkMode', value);
                      // (value)
                      //     ? toggleTheme(ThemeMode.dark)
                      //     : toggleTheme(ThemeMode.light);
                    },
                  ),
                ),
                // ListTile(
                //   title: const Text(
                //     'Hints',
                //     style: TextStyle(fontSize: 20),
                //   ),
                //   trailing: Switch(
                //     value: _hintsEnabled,
                //     onChanged: (bool value) {
                //       _updateSetting('hintsEnabled', value);
                //     },
                //   ),
                // ),
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
