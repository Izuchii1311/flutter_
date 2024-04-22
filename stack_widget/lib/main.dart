import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("Stack Widget & Align Widget"),
          ),
          body: Stack(
            children: [
              // background
              Column(
                children: [
                  Flexible(
                      flex: 1,
                      child: Row(
                        children: [
                          Flexible(
                            child: Container(
                              color: Colors.white,
                            ),
                            flex: 1,
                          ),
                          Flexible(
                            child: Container(
                              color: Colors.black12,
                            ),
                            flex: 1,
                          ),
                        ],
                      )),
                  Flexible(
                      flex: 1,
                      child: Row(
                        children: [
                          Flexible(
                            child: Container(
                              color: Colors.black12,
                            ),
                            flex: 1,
                          ),
                          Flexible(
                            child: Container(
                              color: Colors.white,
                            ),
                            flex: 1,
                          ),
                        ],
                      ))
                ],
              ),
              // listView & text
              ListView(
                children: [
                  Column(
                    children: [
                      Container(
                        margin: EdgeInsets.all(50),
                        child: Text(
                          'Ini adalah text lapisan tengah dari text.',
                          style: TextStyle(fontSize: 30),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(50),
                        child: Text(
                          'Ini adalah text lapisan tengah dari text.',
                          style: TextStyle(fontSize: 30),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(50),
                        child: Text(
                          'Ini adalah text lapisan tengah dari text.',
                          style: TextStyle(fontSize: 30),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(50),
                        child: Text(
                          'Ini adalah text lapisan tengah dari text.',
                          style: TextStyle(fontSize: 30),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(50),
                        child: Text(
                          'Ini adalah text lapisan tengah dari text.',
                          style: TextStyle(fontSize: 30),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  )
                ],
              ),
              // button
              Align(
                alignment: Alignment(0, 0.8),
                child: ElevatedButton(
                  onPressed: null,
                  child: Text(
                    "Click me!",
                    style: TextStyle(color: Colors.white),
                  ),
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.blue)),
                ),
              )
            ],
          )),
    );
  }
}
