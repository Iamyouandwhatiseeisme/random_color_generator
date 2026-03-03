import 'package:flutter/material.dart';

/// This is the main page for random color generator App.
class GeneratorPage extends StatelessWidget {
  /// Creates an instance of [GeneratorPage].
  const GeneratorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: const Scaffold(
        backgroundColor: Colors.black,
        body: Center(
          child: Text(
            'Hello there',
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
