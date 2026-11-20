import 'package:flutter/material.dart';

enum ButtonType {
  primary( 
    label :'primary' , 
    color : Colors.red
    ),
  secondary(
    label : "secondary",
    color : Colors.blue
  ),
  low(
    label : "low",
    color : Color.fromARGB(255, 31, 197, 9)
  ),
 disable(
    label : "disable",
    color : Color.fromARGB(255, 164, 172, 163)
  );

  

  final String label;
  final Color color;

  const ButtonType({required this.label , required this.color});


  }
enum ButtonPosition { left, right }
class CustomButton extends StatelessWidget {
  final String text;
  final IconData icon;
  final ButtonType buttonType;
  final ButtonPosition buttonPosition;

  const CustomButton({super.key, required this.text, required this.icon,this.buttonType = ButtonType.primary, this.buttonPosition = ButtonPosition.left });

  @override
  Widget build(BuildContext context) {
    
  
      return Padding(
        padding: const EdgeInsets.all(10),
          
          child :  ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: buttonType.color,
            ),
            onPressed: () =>{},
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              
              children: [
           if (buttonPosition == ButtonPosition.left) ...[
              Icon(icon, size: 20),
               const SizedBox(width: 10),
              Text(text),
           ] else ...[
               Text(text),
              const SizedBox(width: 10),
              Icon(icon, size: 20),
    ],
  ],
            
            )
          )
      );
    
    }
  }

    
  