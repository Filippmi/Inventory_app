import 'package:flutter/material.dart';

import './ingredient.dart';

class Drink {
  final String id;
  final String name;
  final Ingredient;

  const Drink({
    @required this.id,
    @required this.name,
    @required this.Ingredient,
  });
}
