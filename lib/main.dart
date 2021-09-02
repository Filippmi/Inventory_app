import 'package:flutter/material.dart';

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
    Drink(id: 'd1', name: 'Latte'),
    Drink(id: 'd2', name: 'Mocha'),
    Drink(id: 'd3', name: 'Amaricano'),
    Drink(id: 'd4', name: 'Drip Coffee'),
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
          child: NewDrink(),
          behavior: HitTestBehavior.opaque,
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Menu'),
      ),
      body: SingleChildScrollView(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            DrinkList(_userDrinks),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.grey,
        child: Icon(Icons.add),
        onPressed: () => (context),
      ),
    );
  }
}
