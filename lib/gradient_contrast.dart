import 'package:flutter/material.dart';
import 'package:coin_toss_app/coin_toss.dart';

class GradientContrast extends StatelessWidget {
  const GradientContrast({super.key});

  @override
  Widget build(context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromARGB(249, 31, 30, 30),
            Color.fromARGB(216, 95, 91, 91)
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomLeft,
        ),
      ),
      child: const Center(
        child: CoinToss(),
      ),


      
    );
  }
}
