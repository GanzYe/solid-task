import 'package:flutter/material.dart';
import 'package:solid_task/utils/color_generator.dart';

void main() {
  runApp(const RandomColorApp());
}

/// The root widget of the application.
/// 
/// It configures the default home screen
class RandomColorApp extends StatelessWidget {
  /// Creates [RandomColorScreen].
  const RandomColorApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: RandomColorScreen(),
    );
  }
}

/// Main interactive screen of the application.
/// 
/// The background color of this screen
/// changes to a randomly when the user taps anywhere on the screen
class RandomColorScreen extends StatefulWidget {
  /// Creates [RandomColorScreen].
  const RandomColorScreen({super.key});

  @override
  State<RandomColorScreen> createState() => _RandomColorScreenState();
}

class _RandomColorScreenState extends State<RandomColorScreen> {
  late Color randomColor;

  @override
  void initState() {
    super.initState();
    randomColor = ColorGenerator.generateRandomColor();
  }

  void _changeBackgroundColor() {
    setState(() {
      randomColor = ColorGenerator.generateRandomColor();
    });
  }

  @override
  Widget build(BuildContext context) {
    final isDarkBackground = randomColor.computeLuminance() < 0.5;

    return Scaffold(
      body: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        curve: Curves.easeInOut,
        color: randomColor,
        child: GestureDetector(
          onTap: _changeBackgroundColor,
          behavior: HitTestBehavior.opaque,
          child: Center(
            child: Text(
              'Hello there',
              style: TextStyle(
                fontSize: 32,
                color: isDarkBackground ? Colors.white : Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
