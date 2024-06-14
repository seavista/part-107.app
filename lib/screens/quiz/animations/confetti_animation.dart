import 'dart:math';
import 'package:flutter/material.dart';

class AwardWithConfettiAnimation extends StatefulWidget {
  @override
  _AwardWithConfettiAnimationState createState() =>
      _AwardWithConfettiAnimationState();
}

class _AwardWithConfettiAnimationState extends State<AwardWithConfettiAnimation>
    with TickerProviderStateMixin {
  late final AnimationController _controller;
  late final Animation<double> _animation;
  late final List<ConfettiParticle> _particles;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 5),
      vsync: this,
    )..repeat();

    _animation = Tween<double>(begin: 0, end: -2000).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOut,
    ));

    _particles = List.generate(100, (_) => ConfettiParticle(vsync: this));
    for (var particle in _particles) {
      particle.controller.forward();
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    for (var particle in _particles) {
      particle.controller.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Stack(
        children: [
          Positioned.fill(
            bottom: 50,
            child: Image.asset(
              "assets/images/bg.png",
              fit: BoxFit.cover,
            ),
          ),
          Center(
            child: AnimatedBuilder(
              animation: _animation,
              builder: (context, child) {
                return Transform.translate(
                  offset: Offset(0, _animation.value),
                  child: Image.asset('assets/images/drone.png',
                      width: MediaQuery.of(context).size.width / 3,
                      height: 100),
                );
              },
            ),
          ),
          ..._particles
              .map((particle) => ConfettiParticleWidget(particle: particle))
              .toList(),
        ],
      ),
    );
  }
}

class ConfettiParticle {
  late final AnimationController controller;
  late final Animation<double> xAnimation;
  late final Animation<double> yAnimation;
  final Color color;

  ConfettiParticle({required TickerProvider vsync})
      : color =
            Color((Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(1.0) {
    controller = AnimationController(
      duration: Duration(seconds: Random().nextInt(3) + 1),
      vsync: vsync,
    );

    xAnimation = Tween<double>(
      begin: Random().nextDouble() * 400 - 200,
      end: Random().nextDouble() * 400 - 200,
    ).animate(controller);

    yAnimation = Tween<double>(
      begin: Random().nextDouble() * -600,
      end: 600,
    ).animate(CurvedAnimation(parent: controller, curve: Curves.easeIn));
  }
}

class ConfettiParticleWidget extends StatelessWidget {
  final ConfettiParticle particle;

  ConfettiParticleWidget({required this.particle});

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: particle.controller,
      builder: (context, child) {
        return Positioned(
          left:
              MediaQuery.of(context).size.width / 2 + particle.xAnimation.value,
          top: MediaQuery.of(context).size.height / 2 +
              particle.yAnimation.value,
          child: Container(
            width: 5,
            height: 5,
            color: particle.color,
          ),
        );
      },
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: AwardWithConfettiAnimation(),
  ));
}
