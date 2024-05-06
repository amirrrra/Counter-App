import 'package:flutter/material.dart';

class AddButtonWidget extends StatelessWidget {
  final String text;
  final void Function()? onPressed;
  const AddButtonWidget({
    super.key,
    this.onPressed,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        minimumSize: const Size(100, 44),
        backgroundColor: Colors.orange,
      ),
      child: Text(
        text,
        style: const TextStyle(
          color: Colors.black,
          fontSize: 18,
        ),
      ),
    );
  }
}
