import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import './models/ingredient.dart';
import './widgets/new_drink.dart';
import './widgets/drink_list.dart';
import './models/drink.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Inventory App',
      theme: ThemeData(
        primarySwatch: Colors.grey,
        accentColor: Colors.deepPurpleAccent,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Drink> _userDrinks = [
    Drink(id: 'd1', name: 'Latte', Ingredient: Ingredient),
    Drink(id: 'd2', name: 'Mocha', Ingredient: null),
    Drink(id: 'd3', name: 'Amaricano', Ingredient: null),
    Drink(id: 'd4', name: 'Drip Coffee', Ingredient: null),
  ];

  void _addNewDrink(String newName) {
    final newDrink = Drink(
      name: newName,
      id: DateTime.now().toString(),
    );

    setState(() {
      _userDrinks.add(newDrink);
    });
  }

  void _startNewDrink(BuildContext ctx) {
    showModalBottomSheet(
      context: ctx,
      builder: (_) {
        return GestureDetector(
          onTap: () {},
          child: NewDrink(_addNewDrink),
          behavior: HitTestBehavior.opaque,
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final PreferredSizeWidget appBar = Platform.isIOS
        ? CupertinoNavigationBar(
            middle: Text(
              'Menu',
            ),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                GestureDetector(
                  child: Icon(CupertinoIcons.add),
                  onTap: () => _startNewDrink(context),
                ),
              ],
            ),
          )
        : AppBar(
            title: Text('Menu'),
          );
    final pageBody = SafeArea(
      child: SingleChildScrollView(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            DrinkList(_userDrinks),
          ],
        ),
      ),
    );
    return Platform.isIOS
        ? CupertinoPageScaffold(child: pageBody, navigationBar: appBar)
        : Scaffold(
            appBar: appBar,
            body: pageBody,
            floatingActionButtonLocation:
                FloatingActionButtonLocation.centerFloat,
            floatingActionButton: Platform.isIOS
                ? Container()
                : FloatingActionButton(
                    backgroundColor: Colors.grey,
                    child: Icon(Icons.add),
                    onPressed: () => _startNewDrink(context),
                  ),
          );
  }
}
