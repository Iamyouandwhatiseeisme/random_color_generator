import 'dart:ui';

/// This is an interface for the generator feature, defining the contract for
/// generating color
abstract class GeneratorInterface {
  /// Generates a light color and returns it as a string.
  Color generateColor();

  /// Generates a random number and returns it as an integer.
  int generateRandomNumber(int seed);

  /// Generates a list of RGBA values and returns it as a list of integers.
  List<int> generateValues({List<int>? colors = const []});

  /// Generates a color from a list of RGBA values
  /// and returns it as a Color object
  Color generateColorFromList(List<int> colors);
}
