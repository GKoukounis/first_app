import 'package:flutter/material.dart';

class NewWidget extends StatelessWidget {
  const NewWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Hello, World!',
      style: TextStyle(color: Colors.white, fontSize: 28),
    );
  }
}