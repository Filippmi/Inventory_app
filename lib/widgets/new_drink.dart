import 'package:flutter/material.dart';

class NewDrink extends StatefulWidget {
  @override
  _NewDrinkState createState() => _NewDrinkState();
}

class _NewDrinkState extends State<NewDrink> {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(labelText: 'Drink Name'),
              controller: null,
            ),
            RaisedButton(
              child: Text('Add Drink'),
              onPressed: _submitData,
            ),
          ],
        ),
      ),
    );
  }
}
