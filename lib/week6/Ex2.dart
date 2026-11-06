import 'package:flutter/material.dart';
import 'package:flutter_application_1/component/appBar.dart';
import 'component/CustomBotton.dart';

class MyBotton extends StatelessWidget {
  const MyBotton({super.key});



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar( title: "My Buttons",),
      body: Center(

         child: Column(
         
            children: [
              CustomButton(text: 'Reading', icon: Icons.book, buttonPosition: ButtonPosition.left, buttonType: ButtonType.primary),
              CustomButton(text: 'Swimming', icon: Icons.pool, buttonPosition: ButtonPosition.right, buttonType: ButtonType.secondary),
              CustomButton(text: 'Coding', icon: Icons.code, buttonPosition: ButtonPosition.left, buttonType: ButtonType.primary),
            ],
        ))
      );
}


}