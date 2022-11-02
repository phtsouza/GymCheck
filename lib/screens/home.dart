import 'package:flutter/material.dart';
import 'package:gym_check/components/workout-list-item.dart';
import 'package:gym_check/models/Workout.dart';
import 'package:gym_check/screens/add-workout.dart';
import 'package:gym_check/screens/qr-code-reader.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();
    var _email;

  void teste() async {
    final SharedPreferences prefs = await _prefs;
    // super.initState();
    setState(() {
      _email = prefs.getString('email');
    });
    print(_email);
  }
  teste();

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
      ],
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: Column(
          children: [
            Text('teste123 $_email'),
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
