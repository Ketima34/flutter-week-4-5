import 'package:flutter/material.dart';

class MyHobbies extends StatelessWidget {
 
  final String hobbies;
  final IconData icon;
  const MyHobbies({super.key, required this.hobbies, required this.icon});

  @override
  Widget build(BuildContext context) {

    return Container(
    
       padding: EdgeInsets.all(30),
       margin: EdgeInsets.fromLTRB(40, 20, 40, 0),
       decoration: BoxDecoration(
         borderRadius: BorderRadius.circular(20),
        color: Colors.amber,
         border: Border.all(color: const Color.fromARGB(255, 224, 149, 27), width: 2),
       ),
       child: Row(
        spacing: 20,
         children: [
           Icon(icon),
           Text(hobbies),
         ],
       ),
    );
  }


}