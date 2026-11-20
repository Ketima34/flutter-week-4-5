import 'package:flutter/material.dart';

List<String> images = [
  "assets/w4-s2/bird.jpg",
  "assets/w4-s2/bird2.jpg",
  "assets/w4-s2/insect.jpg",
  "assets/w4-s2/girl.jpg",
  "assets/w4-s2/man.jpg",
];

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