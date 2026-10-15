import 'package:flutter/material.dart';
import 'package:habithero/widgets/stat_card.dart';

class StatsPage extends StatelessWidget {
  const StatsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Stats')),
      body: const Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            StatCard(
              label: 'Workouts',
              value: '12',
              icon: Icons.fitness_center,
            ),
            SizedBox(height: 12),
            StatCard(
              label: 'Streak',
              value: '7 days',
              icon: Icons.local_fire_department,
            ),
          ],
        ),
      ),
    );
  }
}
