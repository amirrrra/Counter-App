import 'package:flutter/material.dart';

class ResetButtonWidget extends StatelessWidget {
  final void Function() onPressed;

  const ResetButtonWidget({
    super.key,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        minimumSize: const Size(125, 40),
        backgroundColor: Colors.orange,
      ),
      child: const Text(
        'Reset',
        style: TextStyle(
          color: Colors.black,
          fontSize: 18,
        ),
      ),
    );
  }
}
