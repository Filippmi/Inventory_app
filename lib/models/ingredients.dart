import 'package:flutter/foundation.dart';

enum MeasurementValue {
  Grams,
  Cups,
  Tablespoon,
  Ounces,
}

class Ingredient {
  final String name;
  final MeasurementValue measurementvalue;
  final int quantity;

  const Ingredient({
    @required this.name,
    @required this.measurementvalue,
    @required this.quantity,
  });
}
