import 'package:flutter/material.dart';

enum ButtonType { primary, secondary }
enum ButtonPosition { left, right }
class CustomButton extends StatelessWidget {
  final String text;
  final IconData icon;
  final ButtonType? buttonType;
  final ButtonPosition? buttonPosition;

  const CustomButton({super.key, required this.text, required this.icon,this.buttonType , this.buttonPosition = ButtonPosition.left});

  @override
  Widget build(BuildContext context) {
    
    ButtonPosition? positon = buttonPosition ?? ButtonPosition.left;

    if(positon == ButtonPosition.left){
      return Container(
        padding: EdgeInsets.all(10),
        margin: EdgeInsets.all(20),
        decoration: BoxDecoration( 
          color: buttonType == ButtonType.primary ? Colors.amber : Colors.grey,
          borderRadius: BorderRadius.circular(20),),
          child : Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              Icon(icon, size: 20,),
              SizedBox(width: 10),
              Text(text),
            ],)
          )
      );
    }else{
      return Container(
        padding: EdgeInsets.all(10),
        margin: EdgeInsets.all(20),
        decoration: BoxDecoration( 
          color: buttonType == ButtonType.primary ? Colors.amber : Colors.grey,
          borderRadius: BorderRadius.circular(20),),
          child : Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              Text(text),
              SizedBox(width: 10),
              Icon(icon, size: 20,),
            ],)
          )
      );
    }
  }
}
    
  