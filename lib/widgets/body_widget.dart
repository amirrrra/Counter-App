import 'package:basketball_counter_app/widgets/add_button_widget.dart';
import 'package:flutter/material.dart';

class BodyWidget extends StatelessWidget {
  final void Function()? onePointOnPressed;
  final void Function()? twoPointOnPressed;
  final void Function()? threePointOnPressed;
  final String teamName;
  final int teamPoints;

  const BodyWidget({
    super.key,
    required this.teamName,
    this.onePointOnPressed,
    this.twoPointOnPressed,
    this.threePointOnPressed, required this.teamPoints,
  });

  @override
  Widget build(BuildContext context) {

    return SizedBox(
      height: 500,
      child: Column(
        children: [
          const Spacer(
            flex: 4,
          ),
          Text(
            teamName,
            style: const TextStyle(
              fontSize: 36,
            ),
          ),
          Text(
            '$teamPoints',
            style: const TextStyle(
              fontSize: 150,
            ),
          ),
          AddButtonWidget(
            text: 'Add 1 point',
            onPressed: onePointOnPressed,
          ),
          const Spacer(
            flex: 1,
          ),
          AddButtonWidget(
            text: 'Add 2 point',
            onPressed: twoPointOnPressed,
          ),
          const Spacer(
            flex: 1,
          ),
          AddButtonWidget(
            text: 'Add 3 point',
            onPressed: threePointOnPressed,
          ),
          const Spacer(
            flex: 12,
          ),
        ],
      ),
    );
  }
}
