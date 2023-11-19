import 'package:flutter/material.dart';

class CalculatorView extends StatelessWidget {
  const CalculatorView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        children: [
          const SizedBox(
            height: 60,
          ),
          const NumInput(hint: "Type number one"),
          const NumInput(hint: "Type number two"),
          const Text(
            "0",
            style: TextStyle(
              fontSize: 64,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          const Spacer(),
          Container(
            height: 60,
            width: double.infinity, // Full width
            decoration: BoxDecoration(
              color: Colors.red, // Red background color
              borderRadius: BorderRadius.circular(10), // 10px border radius
            ),
            child: InkWell(
              onTap: () {
                // Add your button click logic here
              },
              child: const Center(
                child: Text(
                  'Click Me!',
                  style:
                      TextStyle(color: Colors.white), // Set text color to white
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class NumInput extends StatelessWidget {
  final String? hint;

  const NumInput({
    super.key,
    this.hint = "Enter a number",
  });

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      TextField(
        keyboardType: TextInputType.number,
        decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(
              width: 1.25,
              color: Colors.black,
            ),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(
              width: 1.25,
              color: Colors.black,
            ),
          ),
          // labelText: "0",
          hintText: hint,
          hintStyle: const TextStyle(
            color: Colors.black38,
          ),
        ),
      ),
      const SizedBox(
        height: 12,
      )
    ]);
  }
}
