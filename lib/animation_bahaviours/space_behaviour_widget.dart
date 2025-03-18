import 'package:animated_background/animated_background.dart';
import 'package:flutter/material.dart';

class SpaceBehaviourWidget extends StatefulWidget {
  const SpaceBehaviourWidget({super.key});

  @override
  State<SpaceBehaviourWidget> createState() => _SpaceBehaviourWidgetState();
}

class _SpaceBehaviourWidgetState extends State<SpaceBehaviourWidget>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedBackground(
        child: Center(child: Text("Space Behaviour")),
        vsync: this,
        behaviour: SpaceBehaviour(backgroundColor: Colors.white),
      ),
    );
  }
}
