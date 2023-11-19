import 'package:flutter/cupertino.dart';
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
          // button: plus
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // button: divide
              Container(
                height: 48,
                width: 48, // Full width
                decoration: BoxDecoration(
                  color: Colors.red, // Red background color
                  borderRadius: BorderRadius.circular(8), // 10px border radius
                ),
                child: InkWell(
                  onTap: () {
                    // Add your button click logic here
                    print("> / ");
                  },
                  child: const Icon(CupertinoIcons.divide, color: Colors.white),
                ),
              ),
              // button: multiply
              Container(
                height: 48,
                width: 48, // Full width
                decoration: BoxDecoration(
                  color: Colors.red, // Red background color
                  borderRadius: BorderRadius.circular(8), // 10px border radius
                ),
                child: InkWell(
                  onTap: () {
                    // Add your button click logic here
                    print("> x ");
                  },
                  child:
                      const Icon(CupertinoIcons.multiply, color: Colors.white),
                ),
              ),
              // button: plus
              Container(
                height: 48,
                width: 48, // Full width
                decoration: BoxDecoration(
                  color: Colors.red, // Red background color
                  borderRadius: BorderRadius.circular(8), // 10px border radius
                ),
                child: InkWell(
                  onTap: () {
                    // Add your button click logic here
                    print("> + ");
                  },
                  child: const Icon(CupertinoIcons.add, color: Colors.white),
                ),
              ),
              // button: minus
              Container(
                height: 48,
                width: 48, // Full width
                decoration: BoxDecoration(
                  color: Colors.red, // Red background color
                  borderRadius: BorderRadius.circular(8), // 10px border radius
                ),
                child: InkWell(
                  onTap: () {
                    // Add your button click logic here
                    print("> - ");
                  },
                  child: const Icon(CupertinoIcons.minus, color: Colors.white),
                ),
              ),
              // button: divide
              Container(
                height: 48,
                width: 48, // Full width
                decoration: BoxDecoration(
                  color: Colors.red[900], // Red background color
                  borderRadius: BorderRadius.circular(8), // 10px border radius
                ),
                child: InkWell(
                  onTap: () {
                    // Add your button click logic here
                    print("> / ");
                  },
                  child: const Icon(CupertinoIcons.refresh_thin,
                      color: Colors.white),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 100,
          )
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
