import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController controller = TextEditingController(text: '');

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Text Field Widget'),
          ),
          body: Container(
            margin: EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                TextField(
                  onChanged: (value) {
                    setState(() {});
                  },
                  controller: controller,
                  decoration: InputDecoration(
                      fillColor: Colors.lightBlue[50],
                      filled: true,
                      labelText: 'Username',
                      hintText: "Masukkan Username atau Email anda.",
                      prefixIcon: Icon(Icons.person),
                      suffixIcon: Icon(Icons.remove_red_eye),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5))),
                ),
                Text(controller.text)
              ],
            ),
          )),
    );
  }
}
