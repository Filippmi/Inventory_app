import 'package:flutter/material.dart';

class NewDrink extends StatefulWidget {
  final Function addDrink;

  NewDrink(this.addDrink);

  @override
  _NewDrinkState createState() => _NewDrinkState();
}

class _NewDrinkState extends State<NewDrink> {
  final _nameController = TextEditingController();

  void _submitData() {
    if (_nameController.text.isEmpty) {
      return;
    }
    final enteredName = _nameController.text;

    widget.addDrink(
      enteredName,
    );

    Navigator.of(context).pop();
  }

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
              controller: _nameController,
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
