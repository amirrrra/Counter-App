import 'package:flutter/material.dart';

class DividerWidget extends StatelessWidget {
  const DividerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 500,
      child: VerticalDivider(
        color: Colors.black,
        indent: 60,
        endIndent: 110,
      ),
    );
  }
}
