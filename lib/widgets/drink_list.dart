import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/drink_recipies_screen.dart';
import '../models/drink.dart';

class DrinkList extends StatelessWidget {
  final List<Drink> drinks;

  void selectDrink(BuildContext ctx) {
    Navigator.of(ctx).push(
      MaterialPageRoute(
        builder: (_) {
          return DrinkRecipiesScreen();
        },
      ),
    );
  }

  DrinkList(this.drinks);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      child: ListView.builder(
          itemBuilder: (ctx, index) {
            final card = Card(
              elevation: 5,
              child: ListTile(
                leading: CircleAvatar(
                  radius: 30,
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: FittedBox(
                      child: Text('${drinks[index].name}'),
                    ),
                  ),
                ),
              ),
            );
            return Platform.isIOS
                ? GestureDetector(
                    child: card,
                    onTap: () => selectDrink(context),
                  )
                : InkWell(
                    onTap: () => selectDrink(context),
                    splashColor: Colors.black,
                    child: card,
                  );
          },
          itemCount: drinks.length),
    );
  }
}
