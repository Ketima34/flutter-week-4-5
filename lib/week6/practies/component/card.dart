import 'package:flutter/material.dart';


enum Priority {
  high(
    label: 'High',
    color:  Colors.red,
    icon:  Icons.hourglass_empty),
  medium(
    label: 'Medium',
    color:  Color.fromARGB(255, 213, 174, 30),
    icon:  Icons.hourglass_disabled_sharp),
   low(
    label: 'Low',
    color:  Color.fromARGB(255, 51, 210, 7),
    icon: Icons.arrow_upward);
  

  final String label ;
  final Color color;
  final IconData icon;
  const Priority({required this.label, required this.color, required this.icon});
}

class MyCard extends StatelessWidget{

final Icon icon;
final String title;
final Priority priority;

const MyCard({super.key, required this.icon, required this.title, required this.priority});

@override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      color: priority.color ,
      child: Row(
       mainAxisAlignment: MainAxisAlignment.center,

       children: [
        Icon(priority.icon),
        Text(title, 
        
        
        ),
        Text(priority.label , style: const TextStyle(backgroundColor: Colors.white),)

       ],
      ),
    );
  }

}