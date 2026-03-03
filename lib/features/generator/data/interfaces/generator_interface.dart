import 'dart:ui';

/// This is an interface for the generator feature, defining the contract for
/// generating color
abstract class GeneratorInterface {
  /// Generates a light color and returns it as a string.
  Color generateLightColor();

  /// Generates a dark color and returns it as a string.
  String generateDarkColor();

  /// Generates a random number and returns it as an integer.
  int generateRandomNumber(int seed);
}
