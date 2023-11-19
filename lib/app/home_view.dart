// import 'package:basics/views/calculator_view.dart';
import 'package:basics/views/ice_cream_view.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.amber,
      body: SafeArea(
        minimum: const EdgeInsets.all(0),
        bottom: false,
        top: true,
        // child: CalculatorView(),
        child: IceCreamView(),
      ),
    );
  }
}
