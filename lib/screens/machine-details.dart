import 'package:flutter/material.dart';
import 'package:gym_check/screens/home.dart';

class MachineDetails extends StatelessWidget {
  const MachineDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Machine Details'),
      ),
      body: Center(
        child: Column(
          children: [
            const Text('Machine Details'),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Home()));
                },
                child: const Text('Fechar'))
          ],
        ),
      ),
    );
  }
}
