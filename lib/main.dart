import 'package:flutter/material.dart';
import 'package:random_color_generator/di/di.dart';
import 'package:random_color_generator/features/generator/domain/presentation/generator_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await DI.init();
  runApp(const AppRoot());
}

/// This is the main application widget.
/// app is ran through this root widget
class AppRoot extends StatelessWidget {
  /// Creates an instance of [AppRoot].
  const AppRoot({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Random Color Generator App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const GeneratorPage(),
    );
  }
}
