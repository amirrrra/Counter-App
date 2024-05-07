import 'package:basketball_counter_app/widgets/app_bar_widget.dart';
import 'package:basketball_counter_app/widgets/body_widget.dart';
import 'package:basketball_counter_app/widgets/divider_widget.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: AppBarWidget(),
      body: Column(
        children: [
          Row(
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
        ],
      ),
    );
  }
}
