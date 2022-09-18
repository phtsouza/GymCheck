import 'package:flutter/material.dart';
import 'package:gym_check/screens/home.dart';

class Workout extends StatelessWidget {
  const Workout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Workout'),
      ),
      body: Center(
        child: Column(
          children: [
            const Text('Workout'),
          ],
        ),
      ),
    );
  }
}
