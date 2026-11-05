import 'package:flutter/material.dart';

class Ex2 extends StatelessWidget {
const Ex2({super.key});
  
@override
Widget build(BuildContext context) {
  return Scaffold(
    body: Container(
      padding: EdgeInsets.all(50),
      margin: EdgeInsets.all(40),
      color: Colors.blue[300],
      child: Container(
        decoration: BoxDecoration(
          color: Colors.blue[600],
          borderRadius: BorderRadius.circular(20),
        ),
        child: Center(
          child: Text(
            'CADT Student',
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
        ),
      ),
    ),
  );
}


}
