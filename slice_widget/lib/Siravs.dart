
import 'package:flutter/material.dart';

class Siravs extends StatelessWidget {
  const Siravs({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Colored CircleAvatars'),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const <Widget>[
            CircleAvatar(
              backgroundColor: Color.fromARGB(255, 3, 113, 10), // Warna biru
              radius: 50.0, // Ukuran lingkaran
            ),
            SizedBox(height: 20), // Jarak antar avatar
            CircleAvatar(
              backgroundColor: Color.fromARGB(255, 6, 28, 40), // Warna kuning
              radius: 50.0, // Ukuran lingkaran
            ),
            SizedBox(height: 20), // Jarak antar avatar
            CircleAvatar(
              backgroundColor: Color.fromARGB(255, 115, 8, 1), // Warna merah
              radius: 50.0, // Ukuran lingkaran
            ),
          ],
        ),
      ),
    );
  }
}
