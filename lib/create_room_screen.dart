import 'package:flutter/material.dart';

class CreateRoomScreen extends StatefulWidget {
  static String routeName= '/create-room';
  const CreateRoomScreen({super.key});

  @override
  State<CreateRoomScreen> createState() => _CreateRoomScreenState();
}

class _CreateRoomScreenState extends State<CreateRoomScreen> {
  final TextEditingController _nameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: createRoomOnScreen(),
    );
  }

  Widget createRoomOnScreen() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('Create Room',style: TextStyle(color: Colors.white,fontSize: 65,fontWeight: FontWeight.bold,),),
          const SizedBox(height: 10,),
          TextField(controller:_nameController ,decoration: InputDecoration(fillColor: Colors.black,hintText: 'Enter Your Name',border: OutlineInputBorder(borderRadius: BorderRadius.circular(20))),),
          const SizedBox(height: 10,),
          TextButton(onPressed: (){},style: TextButton.styleFrom(backgroundColor: Colors.indigoAccent,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(7))), child: const Text('Create',style: TextStyle(color: Colors.white,fontSize: 24,fontWeight: FontWeight.bold),))
        ],
      ),
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _nameController.dispose();
    super.dispose();
  }
}