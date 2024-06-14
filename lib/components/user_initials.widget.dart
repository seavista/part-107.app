import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:quiz_app/config/routes/app_routes.dart';
import 'package:quiz_app/controllers/question_controller.dart';

class UserInitialsCircle extends StatefulWidget {
  @override
  _UserInitialsCircleState createState() => _UserInitialsCircleState();
}

class _UserInitialsCircleState extends State<UserInitialsCircle> {
  String _initials = "";

  @override
  void initState() {
    super.initState();
    _getUserInitials();
  }

  void _getUserInitials() {
    var user = FirebaseAuth.instance.currentUser;
    if (user != null) {
      String fullName = user.displayName ?? (user.email ?? "Anonymous User");
      List<String> names = fullName.split(" ");
      _initials = names.length > 1
          ? names.first[0].toUpperCase() + names.last[0].toUpperCase()
          : names.first[0].toUpperCase() + names.first[1].toUpperCase();
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    final ctrl = Get.put(QuestionController());

    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        child: GestureDetector(
          onTap: () async {
            print('Circle tapped');

            Navigator.pushNamed(context, Routes.appSettings);

            // Navigator.of(context)
            //     .push(
            //       MaterialPageRoute<SettingsScreen>(
            //         builder: (context) => const SettingsScreen(),
            //       ),
            //     )
            //     .whenComplete(() {});

            // Handle tap
          },
          onLongPress: () {
            print('Circle long-pressed');
            // Handle long press
          },
          child: Badge(
            isLabelVisible: ctrl.isPaid,
            backgroundColor: Theme.of(context).colorScheme.secondary,
            label: Text('PRO'),
            offset: Offset(2, -7),
            child: CircleAvatar(
              minRadius: 8,
              maxRadius: 16,
              backgroundColor: Theme.of(context).colorScheme.secondaryContainer,
              child: Text(
                _initials,
                style: TextStyle(fontSize: 18),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
