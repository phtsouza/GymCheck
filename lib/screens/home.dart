import 'package:flutter/material.dart';
import 'package:gym_check/components/workout-list-item.dart';
import 'package:gym_check/models/Workout.dart';
import 'package:gym_check/screens/add-workout.dart';
import 'package:gym_check/screens/qr-code-reader.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home'), actions: <Widget>[
        IconButton(
          icon: const Icon(Icons.add),
          tooltip: 'Adicionar Ficha',
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const AddWorkout()));
          },
        ),
      ]),
      body: Center(
        child: Column(
          children: [
            const Text('HOME'),
            WorkoutListItem('Treino 1', 'Treino de peito', 5),
            WorkoutListItem('Treino 2', 'Treino de perna', 5),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const QRCodeReader()));
        },
        backgroundColor: Colors.red,
        child: const Icon(Icons.add),
      ),
    );
  }
}
