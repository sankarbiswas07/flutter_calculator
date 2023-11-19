import 'package:basics/views/calculator_view.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.amber,
      body: SafeArea(
        minimum: EdgeInsets.all(0),
        bottom: false,
        top: true,
        child: CalculatorView(),
      ),
    );
  }
}
