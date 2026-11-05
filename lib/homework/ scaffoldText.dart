import 'package:flutter/material.dart';

class Ex1 extends StatelessWidget {
  
const Ex1({super.key});
  
  @override
  Widget build(BuildContext context){
    return Scaffold(
    body: Center(
      child: Text('Hello, My Name is Chhoungech!',
      
      style: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
          color: const Color.fromARGB(255, 216, 207, 26),
        ),
      ),
    )
    );

  }
}