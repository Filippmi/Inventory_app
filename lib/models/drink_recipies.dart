import 'package:flutter/material.dart';

class Recipes {
  final int id;
  final String drinkName;
  final String ingredients;

  Recipes(
      {@required this.id,
      @required this.drinkName,
      @required this.ingredients});
}
