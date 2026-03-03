import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:random_color_generator/di/di.dart';
import 'package:random_color_generator/features/generator/domain/implementations/generator_service.dart';
import 'package:random_color_generator/features/generator/domain/state/generator_cubit.dart';
import 'package:random_color_generator/features/generator/presentation/generator_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await DI.init();
  runApp(const Main());
}

/// This is the main application widget.
/// app is ran through this root widget
class Main extends StatelessWidget {
  /// Creates an instance of [Main].
  const Main({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GeneratorCubit(generatorService: 
      getIt.get<GeneratorService>()),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Random Color Generator App',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        ),
        home: const GeneratorPage(),
      ),
    );
  }
}
