import 'package:flutter/material.dart';
import 'inicio.dart';

main() => runApp(Ejem22());

class Ejem22 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Color(0xFF7800DB),
      ),
      home: Inicio(),
    );
  }
}

