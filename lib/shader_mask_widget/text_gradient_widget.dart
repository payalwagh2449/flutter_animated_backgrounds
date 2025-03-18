import 'package:flutter/material.dart';

class TextGradientWidget extends StatefulWidget {
  const TextGradientWidget({super.key});

  @override
  State<TextGradientWidget> createState() => _TextGradientWidgetState();
}

class _TextGradientWidgetState extends State<TextGradientWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ShaderMask(
          shaderCallback: (bounds) => const LinearGradient(
            colors: [
              Colors.red,
              Colors.blue,
            ],
          ).createShader(bounds),
          child: const Text(
            "Shader Mask For Text",
            style: TextStyle(
              fontSize: 30,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: TextGradientWidget(),
    );
  }
}
