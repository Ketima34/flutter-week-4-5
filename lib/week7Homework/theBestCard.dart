import 'package:flutter/material.dart';

class MyCard extends StatefulWidget {
  final String title;
  final String des;
  const MyCard({super.key , required this.des , required this.title});
  
  @override
  State<MyCard> createState() => _MyCardState();
}

class _MyCardState extends State<MyCard> {
  bool isFav = false;

  void selectedFav()
{
  setState(() {
    isFav = !isFav;
  });
}
  @override
  Widget build(BuildContext context) {
    return  Container(
      padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
             border: BoxBorder.all(color: Colors.black),
                  color: const Color.fromARGB(255, 237, 218, 218),

        ),
      
      child: Expanded(
        child:
       Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
         children: [
            Column( 
              children: [
                Text(widget.title),
                Text(widget.des)
              ],
              
            ),
        IconButton(onPressed: selectedFav, icon: Icon(Icons.heart_broken , color: isFav ? Colors.red : Colors.grey, ))

         ],
      ),
      
      )
    );
    
  }
}