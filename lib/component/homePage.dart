
import 'package:flutter/material.dart';
import './appBar.dart';
import './navBar.dart';
import '../util/botton.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      bottomNavigationBar: const MyNavigationBar(),
      bottomSheet: Center(
        child: MyButton(
          text: 'Click Me',
          onPressed: () {
            // Handle button press
            print('Button pressed!');
          },
        ),
      ),
      body: Container(
        
            child: Container(
              child:  Column(
                
                children: [
            Container(
              height: 100,
              width: 100,
              margin: EdgeInsets.fromLTRB(0, 0, 300, 0),
              color: Colors.blue,
            ),
            Expanded(
              flex:  1,

              child: Container(
               height: 100,
               width: 100,

                color: Colors.green,
                child: Container(
                  height: 50,
                  width: 50,
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                height: 100,
                color: Colors.yellow,
              ),
            ),
          ],
              )
            ),
     
      // child: Row(
      //   mainAxisAlignment: MainAxisAlignment.center,
      //    children: [
      //       Container( color:  Colors.blue,),
      //       Container( color:  Colors.blue,)

      //    ],
      // ),
      ),
    );
  }
}
