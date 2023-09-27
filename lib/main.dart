import 'package:basketball_points_counter_app/Screens/score.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Score());
}
class Score extends StatelessWidget {
  const Score({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
debugShowCheckedModeBanner: false,
home:BasketballPointsCounter() ,

    );
  }
}