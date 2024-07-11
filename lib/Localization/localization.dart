import 'dart:ui';
import 'package:i18n_extension/i18n_extension.dart';
import 'package:khatiwada_bangsawali_updated/Localization/strings.dart';

extension Localization on String {
  static const String _en = 'en';
  static const String _ne = 'ne';

  static const _t = ConstTranslations(_en, {
    appName: {_en: appName, _ne: 'खतिवडा बंशवाली'}
  });
  String get loc => localize(this, _t);
}

const supportedLocal = [
  Locale('en'),
  Locale('ne'),
];
