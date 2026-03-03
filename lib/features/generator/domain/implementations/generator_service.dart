import 'dart:math';
import 'dart:ui';

import 'package:random_color_generator/consts/consts.dart';
import 'package:random_color_generator/features/generator/data/interfaces/generator_interface.dart';

/// This is the service implementation for the generator feature, providing
/// the logic for generating light and dark colors.
class GeneratorService implements GeneratorInterface {
  @override
  Color generateColor() {
    return generateColorFromList(generateValues());
  }

  @override
  int generateRandomNumber(int seed) {
    return Random().nextInt(ceiling);
  }

  /// This is a recursive method that generates a list of ints for color values.

  @override
  List<int> generateValues({List<int>? colors = const []}) {
    final colorsList = [...?colors];
    final randomColor = generateRandomNumber(
      DateTime.now().millisecondsSinceEpoch,
    );
    if (colorsList.length == 4) return colorsList;
    colorsList.add(randomColor);

    return generateValues(colors: colorsList);
  }

  /// This method generates a color from a list of RGBA values.
  @override
  Color generateColorFromList(List<int> colors) {
    return Color.fromARGB(colors.first, colors[1], colors[2], colors[3]);
  }
}
