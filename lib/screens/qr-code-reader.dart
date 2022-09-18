import 'package:flutter/material.dart';
import 'package:gym_check/screens/home.dart';
import 'package:gym_check/screens/machine-details.dart';

class QRCodeReader extends StatelessWidget {
  const QRCodeReader({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('QR Code Reader'),
      ),
      body: Center(
        child: Column(
          children: [
            const Text('QR Code Reader'),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const MachineDetails()));
                },
                child: const Text('Ler QR Code'))
          ],
        ),
      ),
    );
  }
}
