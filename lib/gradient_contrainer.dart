import 'package:flutter/material.dart';
import 'package:first_app/text_widget.dart';

var startAligment = Alignment.topLeft;
var endAligment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer(
    this.colorRed,
    this.colorBlue, {
    super.key,
  });

  final Color colorRed;
  final Color colorBlue;

  void rollDice() {
    print('Button Pressed');
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: startAligment,
          end: endAligment,
          colors: [colorRed, colorBlue],
        ),
      ),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset('assets/images/dice-1.png', width: 200, height: 200),
            const SizedBox(height: 20),
            TextButton(
                onPressed: rollDice,
                style: TextButton.styleFrom(
                    foregroundColor: Colors.white,
                    textStyle: const TextStyle(fontSize: 28)),
                child: const Text('Roll Dice')),
          ],
        ),
      ),
    );
  }
}
