import 'package:flutter/material.dart';
import 'package:first_app/text_widget.dart';

var startAligment = Alignment.topLeft;
var endAligment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer(
    this.colorRed,
    this.colorBlue,
    {
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
      child: Center(
        child: Image.asset('assets/images/dice-1.png', width: 200, height: 200),
      ),
    );
  }
}

