import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var addResult = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          drawer: Drawer(
              child: ListView(
            children: [
              DrawerHeader(
                child: Text("Drawer Header"),
                decoration: BoxDecoration(color: Colors.yellow),
              ),
              ListTile(
                title: Text("Home"),
                leading: Icon(Icons.home),
              ),
              ListTile(
                title: Text("Message"),
                leading: Icon(Icons.message),
              ),
              ListTile(
                title: Text("Email"),
                leading: Icon(Icons.email),
              ),
              for (int i = 0; i < 5; i++) ...[
                ListTile(
                  title: Text("Others"),
                  leading: Icon(Icons.tag),
                ),
              ]
            ],
          )),
          appBar: AppBar(
            backgroundColor: Colors.green,
            leading: Builder(
              builder: (context) => IconButton(
                icon: Icon(Icons.menu),
                onPressed: () {
                  // Open the drawer
                  Scaffold.of(context).openDrawer();
                },
              ),
            ),
            title: Text("Demo App Bar"),
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
          body: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Container(
                          child: Row(
                            children: [
                              Container(
                                height: 70,
                                width: 70,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: NetworkImage(
                                            "https://images.unsplash.com/photo-1535713875002-d1d0cf377fde?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8dXNlcnxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&w=1000&q=80")),
                                    borderRadius: BorderRadius.circular(100.0),
                                    color: Colors.red),
                              ),
                              SizedBox(
                                width: 20.0,
                              ),
                              Text(
                                "User Picture",
                                style: TextStyle(
                                    fontSize: 16.0, fontWeight: FontWeight.bold),
                              ),
                              Spacer(),
                              Icon(Icons.more_horiz)
                            ],
                          ),
                        ),
                        Divider(),
                        Container(
                          height: 300.0,
                          child: Image.network(
                              "https://images.unsplash.com/photo-1471879832106-c7ab9e0cee23?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8Mnx8fGVufDB8fHx8&w=1000&q=80"),
                        ),
                        Container(
                          child: Row(
                            children: [
                              Icon(Icons.favorite),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text("344 Likes"),
                              ),
                              SizedBox(width: 20.0,),
                              Icon(Icons.message),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text("1234 Comments"),
                              )
                            ],
                          ),
                        ),
                      SizedBox(height: 20.0,),
                       Container(
                          child: Row(
                            children: [
                              Container(
                                height: 70,
                                width: 70,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: NetworkImage(
                                            "https://images.unsplash.com/photo-1535713875002-d1d0cf377fde?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8dXNlcnxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&w=1000&q=80")),
                                    borderRadius: BorderRadius.circular(100.0),
                                    color: Colors.red),
                              ),
                              SizedBox(
                                width: 20.0,
                              ),
                              Text(
                                "User Picture",
                                style: TextStyle(
                                    fontSize: 16.0, fontWeight: FontWeight.bold),
                              ),
                              Spacer(),
                              Icon(Icons.more_horiz)
                            ],
                          ),
                        ),
                        Divider(),
                        Container(
                          height: 300.0,
                          child: Image.network(
                              "https://images.unsplash.com/photo-1471879832106-c7ab9e0cee23?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8Mnx8fGVufDB8fHx8&w=1000&q=80"),
                        ),
                        Container(
                          child: Row(
                            children: [
                              Icon(Icons.favorite),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text("344 Likes"),
                              ),
                              SizedBox(width: 20.0,),
                              Icon(Icons.message),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text("1234 Comments"),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          )),
    );
  }
}
