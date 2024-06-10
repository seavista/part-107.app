import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:quiz_app/config/routes/app_routes.dart';

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
      String fullName = user.displayName ?? "Anonymous User";
      List<String> names = fullName.split(" ");
      _initials = names.length > 1
          ? names.first[0].toUpperCase() + names.last[0].toUpperCase()
          : names.first[0].toUpperCase();
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: () async {
          print('Circle tapped');

          FirebaseAuth.instance.signOut();
          Navigator.pushReplacementNamed(context, Routes.appWelcome);

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
        child: CircleAvatar(
          minRadius: 6,
          maxRadius: 12,
          backgroundColor: Theme.of(context).colorScheme.secondaryContainer,
          child: Text(
            _initials,
            style: TextStyle(fontSize: 18),
          ),
        ),
      ),
    );
  }
}
