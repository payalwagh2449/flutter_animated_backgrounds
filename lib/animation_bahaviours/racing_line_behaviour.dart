import 'package:animated_background/animated_background.dart';
import 'package:flutter/material.dart';

class RacingLineBehaviour extends StatefulWidget {
  const RacingLineBehaviour({super.key});

  @override
  State<RacingLineBehaviour> createState() => _RacingLineBehaviourState();
}

class _RacingLineBehaviourState extends State<RacingLineBehaviour>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedBackground(
        child: Center(child: Text("Racing Line Behaviour")),
        vsync: this,
        behaviour: RacingLinesBehaviour(
          direction: LineDirection.Ltr,
          numLines: 50,
        ),
      ),
    );
  }
}
