import 'package:flutter/material.dart';
import 'home_screen.dart';

void main()
{
  runApp(tic_tac_toe());
}

class tic_tac_toe extends StatelessWidget {
  const tic_tac_toe({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: home_screen(),
    );
  }
}
