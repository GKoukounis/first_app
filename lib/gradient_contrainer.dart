import 'package:flutter/material.dart';
import 'package:first_app/text_widget.dart';

var startAligment = Alignment.topLeft;
var endAligment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: startAligment,
          end: endAligment,
          colors: const [Colors.red, Colors.blue],
        ),
      ),
      child: const Center(
        child: NewWidget(),
      ),
    );
  }
}

