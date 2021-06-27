import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        drawer: Drawer(
          child: ListView(
            children: [
              DrawerHeader(
                child: Text("Flutter Workshop"),
              ),
              for (int i = 0; i < 5; i++) ...[
                ListTile(
                  title: Text("Home"),
                  leading: Icon(Icons.home),
                )
              ]
            ],
          ),
        ),
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: Text("Flutter Demo App"),
          leading: Builder(
            builder: (context) => IconButton(
              icon: Icon(Icons.menu),
              onPressed: () => {Scaffold.of(context).openDrawer()},
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.person),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.shopping_cart),
            )
          ],
        ),
        body: Center(
          child: Text("Hello World"),
        ),
      ),
    );
  }
}
