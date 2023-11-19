import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CalculatorView extends StatefulWidget {
  const CalculatorView({super.key});

  @override
  State<CalculatorView> createState() => _CalculatorViewState();
}

class _CalculatorViewState extends State<CalculatorView> {
  num x = 0;
  num z = 0;
  num y = 0;

  final inputXController = TextEditingController();
  final inputYController = TextEditingController();

  String formatNumber(num number) {
    return number.toStringAsFixed(4);
  }

  @override
  void initState() {
    super.initState();
    inputXController.text = x.toString();
    inputYController.text = y.toString();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        children: [
          const SizedBox(
            height: 60,
          ),
          NumInput(hint: "Type number one", controller: inputXController),
          NumInput(hint: "Type number two", controller: inputYController),
          Text(
            formatNumber(z),
            style: const TextStyle(
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
                    setState(() {
                      z = num.tryParse(inputXController.text)! /
                          num.tryParse(inputYController.text)!;
                    });
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
                    setState(() {
                      z = num.tryParse(inputXController.text)! *
                          num.tryParse(inputYController.text)!;
                    });
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
                    setState(() {
                      z = num.tryParse(inputXController.text)! +
                          num.tryParse(inputYController.text)!;
                    });
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
                    setState(() {
                      z = num.tryParse(inputXController.text)! -
                          num.tryParse(inputYController.text)!;
                    });
                  },
                  child: const Icon(CupertinoIcons.minus, color: Colors.white),
                ),
              ),
              // button: refresh
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
                    setState(() {
                      x = 0;
                      y = 0;
                      z = 0;
                      inputXController.clear();
                      inputYController.clear();
                    });
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
  final TextEditingController controller;

  const NumInput({
    super.key,
    this.hint = "Enter a number",
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      TextField(
        controller: controller,
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
