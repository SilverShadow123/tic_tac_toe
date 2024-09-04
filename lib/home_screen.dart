import 'package:flutter/material.dart';

class home_screen extends StatefulWidget {
  static String routeName ='/main-menu';
  const home_screen({super.key});

  @override
  State<home_screen> createState() => _home_screenState();
}

class _home_screenState extends State<home_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(onPressed: (){},style: TextButton.styleFrom(backgroundColor: Colors.blue,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5))), child: Text('Create Room',style: TextStyle(color: Colors.white),)),
            SizedBox(height: 20,),
            TextButton(onPressed: (){},style: TextButton.styleFrom(backgroundColor: Colors.blue,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5))), child: Text('Join Room',style: TextStyle(color: Colors.white),)),
          ],
        ),
      ),
    );
  }
}
