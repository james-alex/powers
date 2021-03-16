# powers

Extension methods for the `num` (`int` and `double`) class that
add functionality for finding the square, cube, and higher order roots
and powers of the number.

## Usage

```dart
import 'package:powers/powers.dart';
```

Importing powers will add a number of methods to the `num` class, which are
inherited by the `int` and `double` classes.

The first set of methods adds methods to handle squares.

```dart
/// [squared] returns the number squared (to the power of 2.)
print(2.squared()); // 4

/// [sqrt] returns the square root of the number.
print(4.sqrt()); // 2

/// [isSquare] returns `true` if the square root of the number is a valid integer.
print(15.isSquare); // false
print(16.isSquare); // true
```

The next set is to handle cubes.

```dart
/// [cubed] returns the number cubed (to the power of 3.)
print(3.cubed()); // 9

/// [cbrt] returns the cube root of the number.
print(9.cbrt()); // 3

/// [isCube] returns `true` if the cube root of the number is a valid integer.
print(26.isCube); // false
print(27.isCube); // true
```

And, the final set of methods is to handle higher order roots and powers.

```dart
/// [pow] returns the number to the power of n.
print(5.pow(5)); // 3125

/// [root] returns the nth root of the number.
print(3125.root(5)); // 5

/// [isPowerOf] returns `true` if the nth root of the number is a valid integer.
print(3200.isPowerOf(5)); // false
print(3125.isPowerOf(5)); // true
```

The `int` class is extended with 3 additional methods that calculate roots and
return the values as `int`s, throwing an error if the value isn't a valid integer.

```dart
/// [sqrtToInt] returns the square root of the integer.
print(4.sqrtToInt()); // 2

/// [cbrtToInt] returns the cube root of the integer.
print(9.cbrtToInt()); // 3

/// [rootToInt] returns the factored root of the integer.
print(100.rootToInt(2)); // 10

/// Calling any of the above methods on an integer that isn't a valid power
/// will result in an [InvalidPowerException] being thrown.
print(6.sqrtToInt()); // Throws an error.
```
