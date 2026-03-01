import 'dart:math';
import 'dart:ui';

/// A utility class for generating colors
class ColorGenerator {
  static final _random = Random();

  static const _maxRgbNumber = 0x1000000;

  static const _alphaMask = 0xFF000000;

  /// Generates a random color
  static Color generateRandomColor() =>
      Color(_alphaMask | _random.nextInt(_maxRgbNumber));
}
