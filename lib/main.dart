
// import 'package:flutter/material.dart';
// import 'package:g2/week6/Ex3.dart';

// ___________________________________________________________________
// CASE 1
// The screen is the parent of the Container, 
// it forces the Container to be exactly the same size as the screen.
// ___________________________________________________________________
// void main() {
//   runApp(
//     MaterialApp(
//     home: Scaffold(

//          appBar: AppBar(
//           toolbarHeight: 50.0,
//           backgroundColor: Colors.cyan,
//           title: Text("hello",
//                  style:  TextStyle(
//                   color: Colors.amber,
//                   backgroundColor: Colors.blue,
//                  ),
          
//           ),
          
//          ),
      
//         // bottomNavigationBar: NavigationBar(
//         //   destinations: const <Widget>[

//         //   ],
//         //   backgroundColor: Colors.black,
//         // ) ,
         
//     )
 
//     ),
//   );
// }

import 'package:flutter/material.dart';
import 'package:g2/component/appBar.dart';

import 'week8/raw2.dart';
import 'week7Homework/selectAbleButtom.dart';
import 'week7Homework/theBestCard.dart';
import 'package:flutter/material.dart';

List<String> images = [
  "assets/w4-s2/bird.jpg",
  "assets/w4-s2/bird2.jpg",
  "assets/w4-s2/insect.jpg",
  "assets/w4-s2/girl.jpg",
  "assets/w4-s2/man.jpg",
];

void main() => runApp(
      const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: ImageViewerScreen(), // 1. Point home to your StatefulWidget
      ),
    );

// 2. StatefulWidget holds the whole Scaffold so AppBar and body share 'count'
class ImageViewerScreen extends StatefulWidget {
  const ImageViewerScreen({super.key});

  @override
  State<ImageViewerScreen> createState() => _ImageViewerScreenState();
}

class _ImageViewerScreenState extends State<ImageViewerScreen> {
  int count = 0;

  void increment() {
    setState(() {
      // If not at the last image (index 4), go next; otherwise wrap to 0
      if (count < images.length - 1) {
        count++;
      } else {
        count = 0;
      }
    });
  }

  void decrement() {
    setState(() {
      // If not at the first image (index 0), go back; otherwise wrap to last (index 4)
      if (count > 0) {
        count--;
      } else {
        count = images.length - 1;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[50],
      appBar: AppBar(
        backgroundColor: Colors.green[400],
        title: const Text('Image viewer'),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.navigate_before),
            tooltip: 'Go to the previous image',
            onPressed: decrement, // Swapped to decrement for "previous"
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 50, 0),
            child: IconButton(
              icon: const Icon(Icons.navigate_next),
              tooltip: 'Go to the next image',
              onPressed: increment, // Swapped to increment for "next"
            ),
          ),
        ],
      ),
      // 3. Pass 'count' directly into your Stateless child widget
      body:  DisplayPic(index: count),
      
    );
  }
}

class DisplayPic extends StatelessWidget {
  final int index;
  const DisplayPic({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Image.asset(images[index]);
  }
}









// ___________________________________________________________________
// CASE 2
// The red Container wants to be 100 × 100
// But it can’t  
// Because the screen forces it to be exactly the same size as the screen.
// ___________________________________________________________________

// void main() {
//   runApp(
//     MaterialApp(
//       home: Container(width: 100, height: 100, color: Colors.red),
//     ),
//   );
// }





// ___________________________________________________________________
// CASE 3
// The Scaffold tells the Container can be any size it wants
//
// Now the Container can indeed be 100 × 100.
// ___________________________________________________________________

// void main() {
//   runApp(
//     MaterialApp(
//       home: Scaffold(
//         body: Container(width: 100, height: 100, color: Colors.red),
//       ),
//     ),
//   );
// }





// ___________________________________________________________________
// CASE 4
// Align tells the Container that it can be any size it wants
// It aligns the container to the bottom-right of the available space.
// ___________________________________________________________________

// void main() {
//   runApp(
//     MaterialApp(
//       home: Align(
//         alignment: Alignment.bottomRight,

//         child: Stack(
//           children: [
//             Expanded(
              
//               child: Container(
//                color: Colors.green)),
//             Container(width: 200, height: 100, color: Colors.red),
//             Container(width: 50, height: 50, color: const Color.fromARGB(255, 111, 244, 54)),

//              Container(width: 25, height: 25, color: const Color.fromARGB(255, 95, 54, 244)),


//           ],
//         ),
        


//       ),
//     ),
//   );
// }








// ___________________________________________________________________
// CASE 5
// The Center tells the Container that it can be any size it wants, but not bigger than the screen.
// The Container wants to be of infinite size, 
// But since it can't be bigger than the screen, it just fills the screen.
// ___________________________________________________________________

// void main() {
//   runApp(
//     MaterialApp(
//         home: Center(
//       child: Container(
//           width: double.infinity, height: double.infinity, color: Colors.red),
//     )),
//   );
// }







// ___________________________________________________________________
// CASE 6
// The Center tells the Container that it can be any size it wants
// Since the Container has no child and no fixed size, it decides it wants to be as big as possible, so it fills the whole screen.
// ___________________________________________________________________

// void main() {
//   runApp(
//     MaterialApp(
//         home: Center(
//       child: Container(color: Colors.red),
//     )),
//   );
// }







// ___________________________________________________________________
// CASE 7
// Since the red Container has no size but has a child,
// it decides it wants to be the same size as its child.
// ___________________________________________________________________

// void main() {
//   runApp(
//     MaterialApp(
//         home: Center(
//       child: Container(
//         color: Colors.red,
//         child: Container(color: Colors.green,
//           child: Container(height: 10 , width: 10, color: Colors.amber,),
//         ),
//       ),
//     )),
//   );
// }






// ___________________________________________________________________
// CASE 8
// Container sizes itself to its children's size,
// but it also takes its own padding into consideration
// ___________________________________________________________________

// void main() {
//   runApp(
//     MaterialApp(
//         home: Center(
//       child: Container(
//         padding: const EdgeInsets.all(20),
//         color: Colors.red,
//         child: Container(color: Colors.green, width: 30, height: 30),
//       ),
//     )),
//   );
// }


// ___________________________________________________________________
// CASE 9
// The Column arranges its 2 children vertically. 
// The container will stretch to fill the available width.
// ___________________________________________________________________

// void main() {
//   runApp(
//     MaterialApp(
//       home: Center(
//         child: Column(
//           children: [
//             Container(height: 50, color: Colors.blue),
//             Container(height: 100, color: Colors.green),
//           ],
//         ),
//       ),
//     ),
//   );
// }










// ___________________________________________________________________
// CASE 10
// The Expanded widget expands a child of a Row, Column,
// The green container fill the available space
// ___________________________________________________________________

// void main() {
//   runApp(
//     MaterialApp(
//       home: Center(
//         child: Column(
//           children: [
//             Container(height: 100, color: Colors.blue),
//             Expanded(child: Container(height: 100, color: Colors.green)),
//           ],
//         ),
//       ),
//     ),
//   );
// }




// ___________________________________________________________________
// CASE 11
// The green container has expanded with a flex 1
// The yellow container has expanded with a flex 2
// ___________________________________________________________________

// void main() {
//   runApp(
//     MaterialApp(
//       home: Center(
//         child: Column(
//           children: [
//             Container(
//               height: 100,
//               color: Colors.blue,
//             ),
//             Expanded(
//               flex:  1,
//               child: Container(
//                height: 100,

//                 color: Colors.green,
//               ),
//             ),
//             Expanded(
//               flex: 2,
//               child: Container(
//                 height: 100,
//                 color: Colors.yellow,
//               ),
//             ),
//           ],
//         ),
//       ),
//     ),
//   );
// }








// ___________________________________________________________________
// CASE 12
// A vertical space is added between the   containers
// ___________________________________________________________________

// void main() {
//   runApp(
//     MaterialApp(
//       home: Center(
//         child: Column(
//           children: [
//             Container(
//               height: 100,
//               color: Colors.blue,
//             ),
//             const SizedBox(
//               height: 20,
//             ),
//             Expanded(
//               flex: 1,
//               child: Container(
//                 height: 100,
//                 color: Colors.green,
//               ),
//             ),
//             const SizedBox(
//               height: 20,
//             ),
//             Expanded(
//               flex: 2,
//               child: Container(
//                 height: 100,
//                 color: Colors.yellow,
//               ),
//             ),
//           ],
//         ),
//       ),
//     ),
//   );
// }








// ___________________________________________________________________
//CASE 13
// ___________________________________________________________________

// void main() {
//   runApp(
//     MaterialApp(
//       home: Center(
//           child: Column(children: [
//         Expanded(
//           child: Container(
//             color: Colors.blue,
//           ),
//         ),
//         Expanded(
//           child: Container(
//             padding: const EdgeInsets.only(left: 50, right: 50),
//             color: Colors.yellow,
//             child: Row(
//               children: [
//                 Container(width: 100, color: Colors.pink),
//                 Expanded(child: Container(color: Colors.green)),
//               ],
//             ),
//           ),
//         ),
//       ])),
//     ),
//   );
// }



// ___________________________________________________________________
// CASE 14
// ___________________________________________________________________

// void main() {
//   runApp(
//     MaterialApp(
//       home: Scaffold(
//         body: Column(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           crossAxisAlignment: CrossAxisAlignment.stretch,
//           children: [
//             Container(
//                 color: Colors.yellow,
//                 child: const Text(
//                   "1",
//                   style: TextStyle(backgroundColor: Colors.red, fontSize: 50),
//                 )),
//             Container(
//                 color: Colors.yellow,
//                 child: const Text(
//                   "1",
//                   style: TextStyle(backgroundColor: Colors.green, fontSize: 50),
//                 )),
//           ],
//         ),
//       ),
//     ),
//   );
// }






// ___________________________________________________________________
// CASE 15
// ___________________________________________________________________

// void main() {
//   runApp(
//     MaterialApp(
//       home: Scaffold(
//         body: Column(
//           crossAxisAlignment: CrossAxisAlignment.stretch,
//           mainAxisAlignment: MainAxisAlignment.values[123],
//           children: [
//             Container(
//                 color: Colors.yellow,
//                 child: const Text(
//                   "1",
//                   style: TextStyle(backgroundColor: Colors.red, fontSize: 50),
//                 )),
//             Container(
//                 color: Colors.yellow,
//                 child: const Text(
//                   "2",
//                   style: TextStyle(backgroundColor: Colors.green, fontSize: 50),
//                 )),
//           ],
//         ),
//       ),
//     ),
//   );
// }