import 'package:flutter/material.dart';




class Ex5 extends StatelessWidget  {
  const Ex5({super.key});



  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
         title : const Text("Welcome"),
         backgroundColor: Colors.amber,
        
         toolbarHeight: 100,
        
     ),
    body: Center(
      child: Column(
         children: [
          Container(height: 100, 
          margin : const EdgeInsets.all(20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.amber,
            
          ),
          child: Center(child: Text("My hobbies"),)
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container( height: 150, width: 150 ,
              
              decoration: BoxDecoration( borderRadius: BorderRadius.circular(20),color: const Color.fromARGB(255, 78, 52, 226)),
              child : Center(child: Text("Soccer"),)
              ),
              Container( height: 150, width: 150, decoration: BoxDecoration( borderRadius: BorderRadius.circular(20),color: const Color.fromARGB(255, 78, 52, 226)),
              child : Center(child: Text("Flutter"),)
              )
            ],
          ),
        
         ],

      ),
      
    ),
     bottomNavigationBar: BottomNavigationBar(
      backgroundColor: Colors.amber,
      items: [  
       BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
        BottomNavigationBarItem(icon :Icon(Icons.person), label : "Profile"),
        
     ],)
    );
  }
}