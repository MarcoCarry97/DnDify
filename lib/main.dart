import 'package:dndify/screens/MainScreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const DnDApp());
}

class DnDApp extends StatelessWidget {
  const DnDApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DnDify',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.redAccent),
        useMaterial3: true,
      ),
      home: MainScreen()
    );
  }
}

