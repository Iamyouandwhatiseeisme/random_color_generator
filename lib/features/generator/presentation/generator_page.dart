import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:random_color_generator/features/generator/domain/state/generator_cubit.dart';

/// This is the main page for random color generator App.
class GeneratorPage extends StatelessWidget {
  /// Creates an instance of [GeneratorPage].
  const GeneratorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => context.read<GeneratorCubit>().generateRandomColor(),
      child:  Scaffold(
        backgroundColor: context.watch<GeneratorCubit>().state,
        body: const Center(
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
