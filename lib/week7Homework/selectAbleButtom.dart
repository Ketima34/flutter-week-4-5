import 'package:flutter/material.dart';

class Mybutton extends StatefulWidget {
  const new({super.key});

  @override
  State<Mybutton> createState() => _MyButtonState();
}

class _MyButtonState extends State<Mybutton> {
   bool _isSelected =false;

  void _selectButton(){
    setState(() {
        _isSelected = !_isSelected;
    });
  }
  

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: _selectButton, 
    style: ElevatedButton.styleFrom(
   backgroundColor: _isSelected ? Colors.green : Colors.grey
    ),
        child: const SizedBox(
     width: 100,
     height: 50,
     child: Center(
       child:   Text("hello"),
     ) 
    )
    );
  }
}