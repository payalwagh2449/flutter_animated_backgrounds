import 'package:animated_background/animated_background.dart';
import 'package:flutter/material.dart';

class BubblesBehaviourWidget extends StatefulWidget {
  const BubblesBehaviourWidget({super.key});

  @override
  State<BubblesBehaviourWidget> createState() => _BubblesBehaviourWidgetState();
}

class _BubblesBehaviourWidgetState extends State<BubblesBehaviourWidget>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedBackground(
        child: Center(child: Text("Bubbles Behaviour")),
        vsync: this,
        behaviour: BubblesBehaviour(
          options: const BubbleOptions(
            bubbleCount: 70,
            minTargetRadius: 10.0,
            maxTargetRadius: 50,
            
          ),
        ),
      ),
    );
  }
}
