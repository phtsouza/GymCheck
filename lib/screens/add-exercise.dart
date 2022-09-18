import 'package:flutter/material.dart';
import 'package:gym_check/screens/home.dart';

class AddExercise extends StatelessWidget {
  const AddExercise({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AddExercise'),
      ),
      body: Center(
        child: Column(
          children: [
            const Text('AddExercise'),
          ],
        ),
      ),
    );
  }
}
