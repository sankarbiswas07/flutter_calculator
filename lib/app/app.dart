import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Flutter learn",
        home: Material(
            child: Container(
                color: Colors.indigo,
                child: const Center(
                    child: Text(
                  "Hello World!",
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.amber,
                      fontWeight: FontWeight.bold),
                )))));
  }
}
