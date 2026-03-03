import 'package:get_it/get_it.dart';
import 'package:random_color_generator/features/generator/domain/implementations/generator_service.dart';

/// Dependency injection for services
final getIt = GetIt.instance;

/// This class is responsible for setting up dependency injection in app
class DI {
  /// Initializes the dependency injection by registering the necessary services
  static Future<void> init() async {
    getIt.registerSingleton<GeneratorService>(GeneratorService());
  }
}
