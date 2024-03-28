import 'package:flutter/material.dart';
import 'package:first_app/text_widget.dart';

class GradientContainer extends StatelessWidget {
  const GradientContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [Colors.red, Colors.blue],
        ),
      ),
      child: const Center(
        child: NewWidget(),
      ),
    );
  }
}

