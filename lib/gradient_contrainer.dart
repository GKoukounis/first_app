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
          children: [
            Image.asset('assets/images/dice-1.png', width: 200, height: 200),
            TextButton(
                onPressed: rollDice,
                child: const Text('Roll Dice',
                  style: TextStyle(fontSize: 20, color: Colors.white))),
          ],
        ),
      ),
    );
  }
}
