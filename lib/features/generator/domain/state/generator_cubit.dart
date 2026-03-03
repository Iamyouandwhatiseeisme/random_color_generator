import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:random_color_generator/features/generator/data/interfaces/generator_interface.dart';
import 'package:random_color_generator/features/generator/domain/state/generator_state.dart';

/// This is a Cubit class for managing the state of the color generator feature.
/// It extends [Cubit] with a state of type [Color]
class GeneratorCubit extends Cubit<GeneratorState> {
  /// Generator service that generates a random color
  final GeneratorInterface generatorService;

  /// Constructor receives an instance of[GeneratorInterface]
  /// and creates an initial state with a default color (black).
  GeneratorCubit({required this.generatorService})
    : super(
        GeneratorState(
          backgroundColor: LinearGradient(
            colors: [
              generatorService.generateColor(),
              generatorService.generateColor(),
            ],
          ),
          buttonBackgroundColor: generatorService.generateColor(),
        ),
      );

  /// A method used to generate random color from the generator page
  Future<void> generateRandomColor() async {
    final backGroundColorGradientTop = generatorService.generateColor();
    final backgroundColorGradientBottom = generatorService.generateColor();
    final buttonBackgroundColor = generatorService.generateColor();
    emit(
      state.copyWith(
        backgroundColor: LinearGradient(
          begin: AlignmentGeometry.topLeft,
          end: AlignmentGeometry.bottomRight,
          colors: [backGroundColorGradientTop, backgroundColorGradientBottom],
        ),
        buttonBackgroundColor: buttonBackgroundColor,
      ),
    );
  }

  /// A method used to realign the gradients of the background color
  void realignGradients() {
    final randomGradientDirection1 = generatorService.generateRandomDirection();
    final randomGradientDirection2 = generatorService.generateRandomDirection();
    emit(
      state.copyWith(
        backgroundColor: LinearGradient(
          begin: randomGradientDirection1,
          end: randomGradientDirection2,
          colors: [
            state.backgroundColor.colors.first,
            state.backgroundColor.colors.last,
          ],
        ),
      ),
    );
  }
}
