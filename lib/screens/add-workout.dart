import 'package:flutter/material.dart';
import 'package:gym_check/screens/home.dart';

class AddWorkout extends StatelessWidget {
  const AddWorkout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AddWorkout'),
      ),
      body: Center(
        child: Column(
          children: [
            const Text('AddWorkout'),
          ],
        ),
      ),
    );
  }
}
