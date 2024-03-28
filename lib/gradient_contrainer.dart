import 'package:first_app/dice_roller.dart';
import 'package:flutter/material.dart';

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
      child: const Center(
        child: DiceRoller(),
      ),
    );
  }
}
