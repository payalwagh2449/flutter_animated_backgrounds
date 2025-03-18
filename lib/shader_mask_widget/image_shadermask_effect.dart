import 'package:animated_background_code/lottie_animations/lottie_animation_widget.dart';
import 'package:flutter/material.dart';

class ImageShadermaskEffect extends StatelessWidget {
  const ImageShadermaskEffect({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ShaderMask(
          shaderCallback: (bounds) =>
              const LinearGradient(colors: [Colors.red, Colors.blue])
                  .createShader(bounds),
          // blendMode: BlendMode.srcIn,
          blendMode: BlendMode.modulate,
          child: Image.network(
            "https://tse1.mm.bing.net/th?id=OIP.5DbhKo3vmv36D-tmH1QzKwHaFj&pid=Api&rs=1&c=1&qlt=95&w=145&h=108",
            height: 200,
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
      debugShowCheckedModeBanner: false,
      home: ImageShadermaskEffect(),
    );
  }
}
