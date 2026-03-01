import 'package:flutter/material.dart';
import 'package:solid_task/random_color_screen.dart';

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
