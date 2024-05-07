import 'package:basketball_counter_app/widgets/add_button_widget.dart';
import 'package:flutter/material.dart';

class BodyWidget extends StatefulWidget {
  final String teamName;

  const BodyWidget({
    super.key,
    required this.teamName,
  });

  @override
  State<BodyWidget> createState() => BodyWidgetState();
}

class BodyWidgetState extends State<BodyWidget> {
  static int teamPoints = 0;

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
            widget.teamName,
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
            onPressed: () {
              setState(
                () => teamPoints++,
              );
            },
          ),
          const Spacer(
            flex: 1,
          ),
          AddButtonWidget(
            text: 'Add 2 point',
            onPressed: () {
              setState(
                () => teamPoints += 2,
              );
            },
          ),
          const Spacer(
            flex: 1,
          ),
          AddButtonWidget(
            text: 'Add 3 point',
            onPressed: () {
              setState(
                () => teamPoints += 3,
              );
            },
          ),
          const Spacer(
            flex: 12,
          ),
        ],
      ),
    );
  }
}
