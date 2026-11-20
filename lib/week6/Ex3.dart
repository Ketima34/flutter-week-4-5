

import 'package:flutter/material.dart';
import '../component/appBar.dart';
import 'component/TheProduct.dart';

class Products extends StatelessWidget {
  const Products({super.key});



  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: MyAppBar( title: "My Product",),
      body: Center(

         child: Column(
         
            children: [
              TheProducts(course: Product.dart,)
            ],
        ))
      );
}}
