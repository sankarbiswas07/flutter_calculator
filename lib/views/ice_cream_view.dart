import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class IceCreamView extends StatefulWidget {
  const IceCreamView({super.key});

  @override
  State<IceCreamView> createState() => _IceCreamViewState();
}

class _IceCreamViewState extends State<IceCreamView> {
  Map<String, dynamic>? decodedIceCreams;

  @override
  void initState() {
    super.initState();
    loadIceCreams();
  }

  Future<void> loadIceCreams() async {
    final rawIceCreams = await rootBundle.loadString("assets/iceCream.json");
    decodedIceCreams = jsonDecode(rawIceCreams);
    await Future.delayed(
      const Duration(milliseconds: 800),
    );
    setState(() {
      // ensuring application rebuild, otherwise ice-creams will melt
      print("view re-rendered!");
    });
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
          Expanded(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  if (decodedIceCreams != null)
                    const Text("ice-cream loaded !!")
                  else
                    const CircularProgressIndicator.adaptive(
                      backgroundColor: Colors.amber,
                    )
                  // const Text("ice-cream melted !!")
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
