import 'package:flutter/material.dart';

import '../views/home_view.dart';

class MyApp extends StatelessWidget {
  const MyApp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter learn",
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
      ),
      home: const HomeView(),
    );
  }
}
