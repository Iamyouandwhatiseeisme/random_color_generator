import 'dart:ui';

import 'package:flutter_bloc/flutter_bloc.dart';

/// This is a cubit for controlling current localization
/// It extends [Cubit] with a state of type [Locale]
class LocalizationCubit extends Cubit<Locale> {
  /// Constructor for LocalizationCubit that initializes state
  /// with default locale;
  LocalizationCubit() : super(const Locale('en'));

  /// A method used to change the current locale
  void changeLocale() => emit(
    state.languageCode == 'en' ? const Locale('uk') : const Locale('en'),
  );
}
