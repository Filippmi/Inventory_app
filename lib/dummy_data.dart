import 'package:flutter/material.dart';

import './models/drink.dart';
import './models/ingredient.dart';

final DUMMY_DRINKS = [
  Drink(
    id: 'd1',
    name: 'Latte',
    Ingredient: [
      Ingredient(
        title: 'Milk',
        measurementvalue: 'Cups',
        quantity: 2,
      ),
      Ingredient(
        title: 'Coffee',
        measurementvalue: 'Cups',
        quantity: 1.5,
      ),
    ],
  ),
];
