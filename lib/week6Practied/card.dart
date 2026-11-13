import 'dart:ffi';

import 'package:flutter/material.dart';
class Card extends StatelessWidget {


  final String image ;
  final String title ;
  final Double min;
  final Double max;

  const Card({super.key , required this.image , required this.title, required this.min , required this.max});


  @override
  Widget build(BuildContext context) {
    return Container(
       child:  Row(
        children: [
           Image.asset(image),
           

       ],),
    );
  }
}