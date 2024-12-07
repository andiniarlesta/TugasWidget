import 'package:flutter/material.dart';

import 'package:slice_widget/AppBar.dart';
import 'package:slice_widget/Button.dart';
import 'package:slice_widget/Column.dart';
import 'package:slice_widget/Cont.dart';
import 'package:slice_widget/Footer.dart';
import 'package:slice_widget/Icon.dart';
import 'package:slice_widget/Row.dart';
import 'package:slice_widget/Scaffold.dart';
import 'package:slice_widget/Siravs.dart';
import 'package:slice_widget/Texts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Basic Widget',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(255, 95, 248, 0),
        ),
        useMaterial3: true,
      ),
      home: Texts(), // Gunakan nama kelas yang tidak konflik dengan bawaan Flutter
      
    );
  }
}