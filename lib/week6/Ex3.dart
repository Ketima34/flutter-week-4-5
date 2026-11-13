

import 'package:flutter/material.dart';
import '../component/appBar.dart';
import 'component/TheProduct.dart';

const String pic1 = 'lib/week6/assets/ex3/dart.png';
class Products extends StatelessWidget {
  const Products({super.key});



  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: MyAppBar( title: "My Product",),
      body: Center(

         child: Column(
         
            children: [
              TheProducts(title: Product.dart, description: "I like it" , myImage: pic1,)
            ],
        ))
      );
}}
