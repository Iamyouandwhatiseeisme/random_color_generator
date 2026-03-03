import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:random_color_generator/features/generator/domain/state/generator_cubit.dart';
import 'package:random_color_generator/features/generator/presentation/components/app_button.dart';

/// This is the main page for random color generator App.
class GeneratorPage extends StatelessWidget {
  /// Creates an instance of [GeneratorPage].
  const GeneratorPage({super.key});

  @override
  Widget build(BuildContext context) {
    final state = context.watch<GeneratorCubit>().state;

    return GestureDetector(
      onTap: () => context.read<GeneratorCubit>().generateRandomColor(),
      child: DecoratedBox(
        decoration: BoxDecoration(
          gradient: state.backgroundColor,
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AppButton(
                  label: 'Hello there',
                  backgroundColor:
                      state.buttonBackgroundColor?.withValues(
                        alpha: 0.2,
                      ) ??
                      Colors.black.withValues(alpha: 0.2),
                  textColor: Colors.white,
                ),
                const SizedBox(
                  height: 16,
                ),
                AppButton(
                  label: 'Realign gradients',
                  backgroundColor:
                      state.buttonBackgroundColor?.withValues(
                        alpha: 0.2,
                      ) ??
                      Colors.black.withValues(alpha: 0.2),
                  textColor: Colors.white,
                  onPressed: () =>
                      context.read<GeneratorCubit>().realignGradients(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
