import 'dart:math';

import 'package:animated_background/animated_background.dart';
import 'package:flutter/material.dart';

class ParticleBehaviour extends StatefulWidget {
  const ParticleBehaviour({super.key});

  @override
  State<ParticleBehaviour> createState() => _BackgroundServiceState();
}

class _BackgroundServiceState extends State<ParticleBehaviour>
    with TickerProviderStateMixin {
  //  ADD THIS TICKERPROVIDERSTATEMIXIN
  @override
  Widget build(BuildContext context) {
    ParticleOptions particleOptions = const ParticleOptions(
      baseColor: Color(0xFFAAD0F0),
      maxOpacity: 1.0,
      minOpacity: 0.3,
      particleCount: 100,
      spawnMaxSpeed: 20.0,
      opacityChangeRate: 0.5,
      spawnMaxRadius: 15.0,
      spawnMinRadius: 1.9,
      spawnMinSpeed: 10.0,
      spawnOpacity: 0.8,
    );

    return Scaffold(
      body: AnimatedBackground(
        child: Center(child: Text("HELLO ALL ")),
        vsync: this,
        behaviour: RandomParticleBehaviour(options: particleOptions),
      ),
    );
  }
}
