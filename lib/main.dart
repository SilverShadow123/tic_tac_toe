import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:tic_tac_toe/create_room_screen.dart';
import 'home_screen.dart';
import 'join_room_screen.dart';

void main()
{
  runApp(tic_tac_toe());
}

class tic_tac_toe extends StatelessWidget {
  const tic_tac_toe({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        home_screen.routeName:(context)=>const home_screen(),
        JoinRoomScreen.routeName:(context)=>const JoinRoomScreen(),
        CreateRoomScreen.routeName:(context)=>const CreateRoomScreen(),
      },
      initialRoute: home_screen.routeName,
      theme: ThemeData.dark(),
    );
  }
}
