import 'dart:math' as math;
import 'package:flutter/material.dart';

///home page that renders text and changing background
class HomePage extends StatefulWidget {
  ///initialization
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Color bgColor = Colors.white;
  Color generateRandomColor() {
    const baseColor = 0xFFFFFF;

    return Color((math.Random().nextDouble() * baseColor).toInt())
        .withOpacity(1);
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          bgColor = generateRandomColor();
        });
      },
      child: Scaffold(
        backgroundColor: bgColor,
        body: const Center(
          child: Text("hello there"),
        ),
      ),
    );
  }
}
