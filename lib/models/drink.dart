import 'package:flutter/material.dart';

class Drink {
  final String id;
  final String name;
  final List<String> ingredients;

  const Drink({
    @required this.id,
    @required this.name,
    @required this.ingredients,
  });
}
