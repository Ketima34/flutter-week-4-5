import 'dart:io';

import 'package:flutter/material.dart';


enum Product {
  dart( 
    title : "Dart",
    description :"the best obj " ,
    image : 'assets/ex3/dart.png'
  ),
  flutter(title : "Dart",
    description :"the best mobile " ,
    image : 'assets/ex3/flutter.png' ), 

  firebase(title : "Dart",
    description :"the best cloud " ,
    image : 'assets/ex3/firebase.png');

    final String title ;
    final String description;
    final String image;

    const Product({ required this.title , required this.description , required this.image});

  
  }

 class TheProducts extends StatelessWidget {
  
  final Product course;

  const TheProducts({super.key , required this.course });


  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
       padding :const EdgeInsets.all(20),
        height: 200,
        width: 300,

        decoration: const BoxDecoration(
           color: Colors.blueAccent,
           borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
       
       child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        
        children: [
        
             Image.asset(
                  course.image,
                  height: 50,
               ),
             
             SizedBox(
              height: 50,
              child: Text(course.title),
             ),
             SizedBox(
              height: 20,
              child: Text(course.description) ,
             )

             
        ],
       ),
    );
  }


 }