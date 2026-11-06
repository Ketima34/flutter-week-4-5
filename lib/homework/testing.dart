import 'package:flutter/material.dart';


class test extends StatelessWidget{
const test({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Row(
        children: [
        Container(color: Colors.red, width: 100, 
         child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(Icons.home, size: 50,),
            Icon(Icons.search, size: 50,),
            Icon(Icons.settings, size: 50,),
          ],
         ),
        ),

        Scrollbar(child:  Expanded(
          child: ListView.builder(
            itemCount: 20,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text('Item ${index + 1}'),
              );
            },
          ),
        ),
        ),
      ],
       
      
      )
      );

  }
}