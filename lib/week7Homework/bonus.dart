import 'package:flutter/material.dart';

class Card extends StatefulWidget {
  const new({super.key});

  @override
  State<Card> createState() => _MyCardState();
}

class _MyCardState extends State<Card> {
int score = 0;

void increment(){
  setState(() {
        score >100 ? score++ :  score =0;

  });
}

void decrement(){
  setState(() {
       score < 0 ? score -- : score= 100;

  });
}

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
          IconButton(onPressed: increment, icon: const Icon(Icons.plus_one)),
          IconButton(onPressed: decrement, icon: const Icon(Icons.minor_crash_rounded))
      ],
    );
  }
}




class ScoreBar extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      height: 50,
      child: Container(
        
      ),
    );
  }
}