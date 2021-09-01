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
      title: 'Inventory App',
      theme: ThemeData(
        primarySwatch: Colors.grey,
        accentColor: Colors.deepPurpleAccent,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
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
              Container(
                child: InkWell(
                  child: Card(
                    elevation: 5,
                    child: ListTile(
                      leading: CircleAvatar(
                        radius: 30,
                        child: Padding(
                            padding: EdgeInsets.all(10),
                            child: FittedBox(
                              child: Text('Latte'),
                            )),
                      ),
                      // trailing: IconButton(
                      //   icon: Icon(Icons.arrow_forward_ios_outlined),
                      //   color: Colors.black,
                      //   onPressed: () {},
                    ),
                  ),
                  onTap: () {},
                ),
              ),
            ]),
      ),
    );
  }
}
