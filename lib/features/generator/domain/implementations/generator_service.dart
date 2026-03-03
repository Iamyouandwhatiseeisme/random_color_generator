import 'dart:math';
import 'dart:ui';

import 'package:random_color_generator/features/generator/data/interfaces/generator_interface.dart';

/// This is the service implementation for the generator feature, providing
/// the logic for generating light and dark colors.
class GeneratorService implements GeneratorInterface {

  @override
  String generateDarkColor() {
    throw UnimplementedError();
  }

  @override
  Color generateLightColor() {

    final initialSeed = DateTime.now().millisecondsSinceEpoch;
    final red = generateRandomNumber(initialSeed);
    final green = generateRandomNumber(red);
    final blue = generateRandomNumber(green);
    final alpha = generateRandomNumber(blue);
    return Color.fromARGB(alpha, red, green, blue);


  }

  @override
  int generateRandomNumber(int seed) {
    
    return Random(seed).nextInt(255);

  }
}
