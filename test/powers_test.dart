import 'dart:math' as math;
import 'package:test/test.dart';
import 'package:powers/powers.dart';

void main() {
  final roots = List<double>.generate(100, (index) => (index + 1) / 10);

  test('Squared', () {
    for (var root in roots) {
      final squared = root.squared();
      expect(squared, equals(root * root));
      final sqrt = squared.sqrt();
      expect(sqrt, equals(root));
      if (root.isValidInteger) {
        expect(squared.isSquare, equals(true));
      }
    }
  });

  test('Cubed', () {
    for (var root in roots) {
      final cubed = root.cubed();
      expect(cubed, equals(root * root * root));
      final cbrt = cubed.cbrt();
      expect(cbrt, equals(root));
      if (root.isValidInteger) {
        expect(cubed.isCube, equals(true));
      }
    }
  });

  test('Higher Order', () {
    for (var root in roots) {
      for (var i = 1; i < 100; i++) {
        final power = root.pow(i);
        expect(power, equals(math.pow(root, i)));
        final rt = power.root(i);
        expect(rt, equals(root));
        if (root.isValidInteger) {
          expect(power.isPowerOf(i), equals(true));
        }
      }
    }
  });
}
