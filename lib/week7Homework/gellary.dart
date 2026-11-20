import 'package:flutter/material.dart';

List<String> images = [
  "assets/w4-s2/bird.jpg",
  "assets/w4-s2/bird2.jpg",
  "assets/w4-s2/insect.jpg",
  "assets/w4-s2/girl.jpg",
  "assets/w4-s2/man.jpg",
];

class ViewerState extends StatefulWidget {
  const ViewerState({super.key});

  @override
  State<ViewerState> createState() => _MyviewerState();
}

class _MyviewerState extends State<ViewerState> {
int count =0 ;

void increament(){
  setState(() {
    count >4 ? count++ :  count =0;
   
  });
}
void decreament(){
  setState(() {
   count < 0 ? count -- : count= 5;
  });
}
  @override
  Widget build(BuildContext context) {
    return AppBar(
          backgroundColor: Colors.green[400],
          title: const Text('Image viewer'),
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.navigate_before),
              tooltip: 'Go to the previous image',
              onPressed: () => increament(),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 50, 0),
              child: IconButton(
                icon: const Icon(Icons.navigate_next),
                tooltip: 'Go to the next image',
                onPressed: () => decreament(),
              ),
            ),
          ],
        );
  }
}

class DisplayPic extends StatelessWidget {
  final int index;
  const DisplayPic({super.key , required this.index});

  @override
  Widget build(BuildContext context) {
    return Image.asset(images[index]);
  }
}
