import '../widgets/drink_recipies_screen.dart';

import '../models/drink.dart';
import 'package:flutter/material.dart';

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
            return InkWell(
              onTap: () => selectDrink(context),
              splashColor: Colors.black,
              child: Card(
                elevation: 5,
                child: ListTile(
                  leading: CircleAvatar(
                    radius: 30,
                    child: Padding(
                        padding: EdgeInsets.all(10),
                        child: FittedBox(
                          child: Text('${drinks[index].name}'),
                        )),
                  ),
                ),
              ),
            );
          },
          itemCount: drinks.length),
    );
  }
}
