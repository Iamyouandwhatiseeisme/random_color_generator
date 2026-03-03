import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:random_color_generator/features/generator/data/interfaces/generator_interface.dart';

/// This is a Cubit class for managing the state of the color generator feature.
/// It extends [Cubit] with a state of type [Color]
class GeneratorCubit extends Cubit<Color> {
  /// Generator service that generates a random color
  final GeneratorInterface generatorService;

  /// Constructor receives an instance of[GeneratorInterface]
  /// and creates an initial state with a default color (black).
  GeneratorCubit({required this.generatorService}) : super(Colors.black);

  /// A method used to generate random color from the generator page
  void generateRandomColor() {
    final randomColor = generatorService.generateColor();
    emit(randomColor);
  }
}
