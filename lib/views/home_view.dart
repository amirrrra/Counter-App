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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarWidget(),
      body: Column(
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              BodyWidget(
                teamName: 'Team A',
              ),
              DividerWidget(),
              BodyWidget(
                teamName: 'Team B',
              ),
            ],
          ),
          ResetButtonWidget(
            onPressed: () {
              setState(() {
                BodyWidgetState.teamPoints = 0;
              });
            },
          )
        ],
      ),
    );
  }
}
