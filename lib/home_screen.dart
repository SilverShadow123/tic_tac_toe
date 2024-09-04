import 'package:flutter/material.dart';
import 'package:tic_tac_toe/create_room_screen.dart';
import 'package:tic_tac_toe/join_room_screen.dart';

class home_screen extends StatelessWidget {
  static String routeName = '/main-menu';
  const home_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
                onPressed: () => createRoom(context),
                style: TextButton.styleFrom(
                    backgroundColor: Colors.blue,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5))),
                child: const Text(
                  'Create Room',
                  style: TextStyle(color: Colors.white),
                )),
            const SizedBox(
              height: 20,
            ),
            TextButton(
                onPressed: () => joinRoom(context),
                style: TextButton.styleFrom(
                    backgroundColor: Colors.blue,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5))),
                child: const Text(
                  'Join Room',
                  style: TextStyle(color: Colors.white),
                )),
          ],
        ),
      ),
    );
  }

  void createRoom(BuildContext context) {
    Navigator.pushNamed(context, CreateRoomScreen.routeName);
  }

  void joinRoom(BuildContext context) {
    Navigator.pushNamed(context, JoinRoomScreen.routeName);
  }
}
