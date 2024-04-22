import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.green,
        body: Container(
          margin: EdgeInsets.all(20),
          child: ListView(
            children: [
              buildCard(Icons.settings, "Settings"),
              buildCard(Icons.account_box, "Account Box"),
              buildCard(Icons.abc, "Abc"),
              buildCard(Icons.label, "Label"),
              buildCard(Icons.adb, "Android"),
            ],
          ),
        ),
      ),
    );
  }

  Card buildCard(IconData iconData, String text) {
    return Card(
      elevation: 5,
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.all(20),
            child: Icon(iconData),
          ),
          Text(text),
        ],
      ),
    );
  }
}
