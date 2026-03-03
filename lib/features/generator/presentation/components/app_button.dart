import 'package:flutter/material.dart';

/// This is appButton widget, a reusable widget that
/// accepts [Color] for background and text for Visibility,
/// accepts [VoidCallback] for press action
/// accepts [String] for text label

class AppButton extends StatelessWidget {
  /// This is the label that will be displayed on the button
  final String label;

  /// This is the background color of the button
  final Color backgroundColor;

  /// This is the text color of the button
  final Color textColor;

  /// This is the callback function that will be called when
  /// the button is pressed
  final VoidCallback? onPressed;

  /// Creates an instance of [AppButton].
  const AppButton({
    required this.label,
    required this.backgroundColor,
    required this.textColor,
    super.key,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onPressed?.call(),
      child: DecoratedBox(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: backgroundColor,
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            label,
            style: TextStyle(
              color: textColor,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
