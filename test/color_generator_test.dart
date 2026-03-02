import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:solid_task/utils/color_generator.dart';

void main() {
  group('ColorGenerator Unit Tests', () {
    test('generateRandomColor returns a valid opaque Color', () {
      final color = ColorGenerator.generateRandomColor();
      const maxRgbNumber = 0xFFFFFFFF;
      const minRgbNumber = 0xFF000000;

      expect(color, isA<Color>());

      expect(color.a, equals(1.0));

      expect(color.toARGB32(), greaterThanOrEqualTo(minRgbNumber));
      expect(color.toARGB32(), lessThanOrEqualTo(maxRgbNumber));
    });

    test(
      'generateRandomColor generates different colors over multiple calls',
      () {
        final color1 = ColorGenerator.generateRandomColor();
        final color2 = ColorGenerator.generateRandomColor();

        expect(color1, isNot(equals(color2)));
      },
    );
  });
}
