import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class IceCreamView extends StatefulWidget {
  const IceCreamView({super.key});

  @override
  State<IceCreamView> createState() => _IceCreamViewState();
}

Future<void> loadIceCreams() async {
  final rawIceCreams = await rootBundle.loadString("assets/iceCream.json");
  final decodedIceCreams = jsonDecode(rawIceCreams);
  print(decodedIceCreams);
}

class _IceCreamViewState extends State<IceCreamView> {
  @override
  void initState() {
    super.initState();
    loadIceCreams();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Ice cream!",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            "Savor joy, one delightful scoop at a time.",
            style: Theme.of(context).textTheme.bodySmall!,
          ),
        ],
      ),
    );
  }
}
