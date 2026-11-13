import 'dart:io';

import 'package:flutter/material.dart';


enum Product {dart,flutter, firebase}

 class TheProducts extends StatelessWidget {
  
  final Product title;
  final String myImage;
  final String description;

  const TheProducts({super.key , required this.title , required this.description , required this.myImage });


  Product get getTittle => title;
  @override
  Widget build(BuildContext context) {
    return Container(
       padding :const EdgeInsets.all(20),
       child: Column(
        children: [
        
             ClipRRect( 
               child:  Image.asset(
                  myImage,
               ),
             ),
             SizedBox(
              height: 50,
              width: 50,
              child: Text(getTittle.toString()),
             ),
             SizedBox(
              height: 50,
              width: 100,
              child: Text(description) ,
             )

             
        ],
       ),
    );
  }


 }