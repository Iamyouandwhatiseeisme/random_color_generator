import 'package:random_color_generator/features/generator/data/interfaces/generator_interface.dart';

/// This is the service implementation for the generator feature, providing
/// the logic for generating light and dark colors.
class GeneratorService implements GeneratorInterface {
  @override
  String generateDarkColor() {
    throw UnimplementedError();
  }

  @override
  String generateLightColor() {
    print('generating color from service');
    throw UnimplementedError();
  }
}
