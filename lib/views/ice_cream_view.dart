import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class IceCreamView extends StatelessWidget {
  const IceCreamView({super.key});

  Future<Map<String, dynamic>> loadIceCreams() async {
    final rawIceCreams = await rootBundle.loadString("assets/iceCream.json");
    await Future.delayed(const Duration(milliseconds: 1000));
    final decodedIceCreams = jsonDecode(rawIceCreams);
    return decodedIceCreams;
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
                  FutureBuilder(
                    future: loadIceCreams(),
                    builder: (context, snapshot) {
                      if (snapshot.connectionState == ConnectionState.done) {
                        // Check if there is data
                        if (snapshot.hasData) {
                          final iceCreams =
                              snapshot.data as Map<String, dynamic>;
                          return Text(iceCreams["iceCreams"][0]["flavor"]);
                        } else {
                          // Handle the case where there is no data
                          return const Text("No data available");
                        }
                      } else if (snapshot.hasError) {
                        // Handle the case where an error occurred
                        return const Text("Error loading data");
                      } else {
                        // Show the loading indicator while waiting
                        return const CircularProgressIndicator.adaptive(
                          backgroundColor: Colors.amber,
                        );
                      }
                    },
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
