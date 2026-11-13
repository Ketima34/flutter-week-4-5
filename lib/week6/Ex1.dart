import 'package:flutter/material.dart';
import '../component/appBar.dart';
import 'component/theHobbies.dart';

class Hobbies extends StatelessWidget {
  const Hobbies({super.key});



  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: MyAppBar( title: "My Hobbies",),
      body: Center(

         child: Column(
         
            children: [
              MyHobbies(hobbies: 'Reading', icon: Icons.book),
              MyHobbies(hobbies: 'Swimming', icon: Icons.pool),
              MyHobbies(hobbies: 'Coding', icon: Icons.code),
            ],
        ))
      );
}


}