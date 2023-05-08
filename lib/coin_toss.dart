import 'package:flutter/material.dart';
import 'package:coin_toss_app/style_text.dart';
import 'dart:math';

final random = Random();

class CoinToss extends StatefulWidget {
  const CoinToss({super.key});

  @override
  State<CoinToss> createState() {
    return _CoinToss();
  }
}

class _CoinToss extends State<CoinToss> {
  var activeImage = 'assets/error.png';
  var activeText = 'You Got Error !!';

  void onPressed() {
    var toss = random.nextInt(2) + 1;
    if (toss == 1) {
      setState(() {
        activeText = 'You Got Head';
        activeImage = 'assets/head.png';
      });
    } else if (toss == 2) {
      setState(() {
        activeText = 'You Got Tails';
        activeImage = 'assets/tail.png';
      });
    }
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          activeImage,
          width: 200,
        ),
        const SizedBox(
          height: 20,
        ),
        OutlinedButton(
          onPressed: onPressed,
          style: OutlinedButton.styleFrom(
            foregroundColor: Colors.white,
          ),
          child: const StyleText(
            text: 'Toss !!',
          ),
        ),
        const SizedBox(
          height: 50,
        ),
        StyleText(
          text: activeText,
        ),
      ],
    );
  }
}
