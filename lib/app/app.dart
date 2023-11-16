import 'package:flutter/material.dart';

import '../views/home_view.dart';

class MyApp extends StatelessWidget {
  const MyApp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(title: "Flutter learn", home: HomeView());
  }
}
