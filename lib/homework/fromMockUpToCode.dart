import 'package:flutter/material.dart';

class Ex4 extends StatelessWidget{
   const Ex4({super.key});
  
  @override
  Widget  build(BuildContext context) {
  
    return Scaffold(
       body: Center(
      
       
          child: Column(
             children: [
                 Container( height:100),
                 Container(height: 400, color: Colors.blue[400],),
                 Row(
                   children: [
                    Expanded( child : Container(color: Colors.amber, height: 100,)),
                   Container(color:Colors.cyan, width: 100, height: 100,)
                 ],
                 
                 ),
                 Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container( color: Colors.green, width: 100, height: 100),
                    Container( color: Colors.green, width: 100, height: 100),
                    Container( color: Colors.green, width: 100, height: 100,)
                  ],
                 ),
                 Container(height: 20,),
                 Expanded(flex: 1, child: Container(color: const Color.fromARGB(115, 250, 92, 182),),)
             ],
          ),

    
       ),
    );
  }
}