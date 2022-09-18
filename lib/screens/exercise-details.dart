import 'package:flutter/material.dart';
import 'package:gym_check/screens/home.dart';

class ExerciseDetails extends StatelessWidget {
  const ExerciseDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ExerciseDetails'),
      ),
      body: Center(
        child: Column(
          children: [
            const Text('ExerciseDetails'),
          ],
        ),
      ),
    );
  }
}
