import 'package:animated_background/animated_background.dart';
import 'package:flutter/material.dart';

class ChildBaheviourWidget extends StatefulWidget {
  const ChildBaheviourWidget({super.key});

  @override
  State<ChildBaheviourWidget> createState() => _ChildBaheviourWidgetState();
}

class _ChildBaheviourWidgetState extends State<ChildBaheviourWidget>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedBackground(
        child: Center(child: Text("Child Behaviour")),
        vsync: this,
        behaviour: ChildFlySpaceBehaviour(),
      ),
    );
  }
}
