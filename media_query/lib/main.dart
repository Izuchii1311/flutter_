import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: MainPage());
  }
}

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Media Query"),
      ),
      body: (MediaQuery.of(context).orientation == Orientation.portrait)
          ? Column(
              children: List.of(generateContainers()),
            )
          : Row(
              children: List.of(generateContainers()),
            ),
    );
  }

  List<Widget> generateContainers() {
    return <Widget>[
      Container(
        color: Colors.red,
        width: 100,
        height: 100,
      ),
      Container(
        color: Colors.orange,
        width: 100,
        height: 100,
      ),
      Container(
        color: Colors.pink,
        width: 100,
        height: 100,
      ),
    ];
  }
}
