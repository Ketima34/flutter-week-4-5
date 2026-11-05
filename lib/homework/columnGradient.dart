import 'package:flutter/material.dart';


class Ex3 extends StatelessWidget {
  const Ex3({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body : Center(
          child: Container(
              
  
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),

                 ),
        
                 height: 400,
                 width: 300,
                 child: Column(
                  children: [
                    // Expanded(
                    //   child:   (
                    //     child: Text(
                    //       'OOP',
                    //       style: TextStyle(color: Colors.white, fontSize: 20),
                    //     ),
                    //   ),
                    // ),
                    // Expanded(
                    //   child: Center(
                    //     child: Text(
                    //       'Dart',
                    //       style: TextStyle(color: Colors.white, fontSize: 20),
                    //     ),
                    //   ),
                    // ),
                    // Expanded(
                    //   child: Center(
                    //     child: Text(
                    //       'Flutter',
                    //       style: TextStyle(color: Colors.white, fontSize: 20),
                    //     ),
                    //   )
                    // )

                  Container(height: 100,
                   margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      gradient: LinearGradient(
                        colors: [Colors.blue, const Color.fromARGB(255, 41, 92, 221)],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                    )
                   ,child : const Center(child: Text("OOP"))),
                  Container(height: 100,
                  margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),

                      gradient: LinearGradient(
                        colors: [Colors.green, const Color.fromARGB(255, 15, 124, 59)],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                    )
                   ,child : const Center(child: Text("Dart"))),
                  Container(height: 100,
                  margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      gradient: LinearGradient(
                        colors: [Colors.red, const Color.fromARGB(255, 241, 6, 6)],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,

                      ),
                    )
                   ,child : const Center(child: Text("Flutter"))),

],),
        ),)
    );
}}