import 'dart:math';

import 'package:flutter/material.dart';
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
  int generateRandomNumber({int? customCeiling}) {
    return Random().nextInt(customCeiling ?? rgbValueCeiling);
  }

  /// This is a recursive method that generates a list of ints for color values.
  @override
  List<int> generateValues({List<int>? colors = const []}) {
    final colorsList = [...?colors];
    final randomColor = generateRandomNumber();
    if (colorsList.length == rgbColorListLength) return colorsList;
    colorsList.add(randomColor);

    return generateValues(colors: colorsList);
  }

  /// This method generates a color from a list of RGBA values.
  @override
  Color generateColorFromList(List<int> colors) {
    return Color.fromARGB(colors.first, colors[1], colors[2], colors[3]);
  }

  @override
  AlignmentGeometry generateRandomDirection() {
    final list = [
      AlignmentGeometry.topLeft,
      AlignmentGeometry.topRight,
      AlignmentGeometry.bottomLeft,
      AlignmentGeometry.bottomRight,
      AlignmentGeometry.center,
      AlignmentGeometry.centerLeft,
      AlignmentGeometry.centerRight,
      AlignmentGeometry.topCenter,
      AlignmentGeometry.bottomCenter,
      AlignmentGeometry.centerStart,
      AlignmentGeometry.centerEnd,
    ];

    return list[generateRandomNumber(
      customCeiling: list.length,
    )];
  }
}
