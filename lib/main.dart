import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: Text('Drink Recipes'),
            centerTitle: true,
            automaticallyImplyLeading: true,
            backgroundColor: Color(
              0xFF949AA2,
            ),
          ),
          body: Column(
            children: [Text('Drink')],
          ),
        ));
  }
}
