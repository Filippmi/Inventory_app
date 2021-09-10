import 'package:flutter/foundation.dart';

class Ingredient {
  final String title;
  final String measurementvalue;
  final double quantity;

  Ingredient({
    @required this.title,
    @required this.measurementvalue,
    @required this.quantity,
  });
}
