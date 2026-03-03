import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:random_color_generator/di/di.dart';
import 'package:random_color_generator/features/generator/domain/state/generator_cubit.dart';
import 'package:random_color_generator/features/generator/presentation/generator_page.dart';
import 'package:random_color_generator/features/localization/domain/state/localization_cubit.dart';
import 'package:random_color_generator/l10n/app_localizations.dart';

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
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => GeneratorCubit()..init(),
        ),
        BlocProvider(
          create: (_) => LocalizationCubit(),
        ),
      ],
      child: Builder(
        builder: (context) {
          return MaterialApp(
            locale: context.watch<LocalizationCubit>().state,
            localizationsDelegates: const [
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
              AppLocalizations.delegate,
            ],
            supportedLocales: const [Locale('en'), Locale('uk')],
            debugShowCheckedModeBanner: false,
            title: 'Random Color Generator App',
            theme: ThemeData(
              colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            ),
            home: const GeneratorPage(),
          );
        },
      ),
    );
  }
}
