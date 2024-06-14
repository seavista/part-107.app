import 'package:flutter/material.dart';
import 'package:quiz_app/constants.dart';

class DroneTakeoffAnimation extends StatefulWidget {
  @override
  _DroneTakeoffAnimationState createState() => _DroneTakeoffAnimationState();
}

class _DroneTakeoffAnimationState extends State<DroneTakeoffAnimation>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  late final Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 2000),
      vsync: this,
    )..repeat(reverse: true);

    _animation = Tween<double>(begin: 0, end: -900).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOut,
    ));
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Stack(
        children: [
          SizedBox(height: kDefaultPadding),
          Image.asset(
            "assets/images/bg.png",
            fit: BoxFit.cover,
          ),
          SafeArea(
            child: Center(
              child: AnimatedBuilder(
                animation: _animation,
                builder: (context, child) {
                  return Transform.translate(
                    offset: Offset(0, _animation.value),
                    child: Image.asset('assets/images/drone.png',
                        width: MediaQuery.of(context).size.width / 3,
                        height: 155),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: DroneTakeoffAnimation(),
  ));
}
