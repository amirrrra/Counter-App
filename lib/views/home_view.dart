import 'package:basketball_counter_app/widgets/app_bar_widget.dart';
import 'package:basketball_counter_app/widgets/body_widget.dart';
import 'package:basketball_counter_app/widgets/divider_widget.dart';
import 'package:basketball_counter_app/widgets/reset_button.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int teamAPoints = 0;
  int teamBPoints = 0;

  void pointsAOnPressed(int points) {
    setState(() {
      teamAPoints += points;
    });
  }
  void pointsBOnPressed(int points) {
    setState(() {
      teamBPoints += points;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarWidget(),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              BodyWidget(
                teamName: 'Team A',
                teamPoints: teamAPoints,
                onePointOnPressed: () {
                  pointsAOnPressed(1);
                },
                twoPointOnPressed: () {
                  pointsAOnPressed(2);
                },
                threePointOnPressed: () {
                  pointsAOnPressed(3);
                },
              ),
              const DividerWidget(),
              BodyWidget(
                teamName: 'Team B',
                teamPoints: teamBPoints,
                onePointOnPressed: () {
                  pointsBOnPressed(1);
                },
                twoPointOnPressed: () {
                  pointsBOnPressed(2);
                },
                threePointOnPressed: () {
                  pointsBOnPressed(3);
                },
              ),
            ],
          ),
          ResetButtonWidget(
            onPressed: () {
              setState(() {
                teamAPoints = 0;
                teamBPoints = 0;
              });
            },
          )
        ],
      ),
    );
  }
}
