import 'package:flutter/material.dart';

class IceCreamView extends StatefulWidget {
  const IceCreamView({super.key});

  @override
  State<IceCreamView> createState() => IceCreamViewState();
}

class IceCreamViewState extends State<IceCreamView> {
  @override
  Widget build(BuildContext context) {
    return const Text("Ice cream!");
  }
}
