import 'package:flutter/material.dart';

/// State object for Generator cubit
class GeneratorState {
  /// This is the background color that will be used in the generator page
  final LinearGradient backgroundColor;

  /// This is the text color that will be used in the generator page, it should
  final Color buttonBackgroundColor;

  /// Constructor for GeneratorState, requires backgroundColor and textColor,
  /// and an optional loading map that defaults to
  GeneratorState({
    required this.backgroundColor,
    required this.buttonBackgroundColor,
  });

  /// This is a copyWith method for [GeneratorState] for emitting
  /// new states without creating new instances
  GeneratorState copyWith({
    LinearGradient? backgroundColor,
    Color? buttonBackgroundColor,
  }) {
    return GeneratorState(
      backgroundColor: backgroundColor ?? this.backgroundColor,
      buttonBackgroundColor:
          buttonBackgroundColor ?? this.buttonBackgroundColor,
    );
  }
}
