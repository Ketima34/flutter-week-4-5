import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
 
  final String title;
   const MyAppBar({super.key, required this.title});
  @override
  Size get preferredSize => const Size.fromHeight(50);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    // return MaterialApp(
    //   home: Scaffold(
    //      appBar: AppBar(
    //        backgroundColor: Colors.amber,
    //        title: Text("data"),
    //      ),
    //   ),
    // )

    return AppBar(
      backgroundColor: Colors.amber,
      title:  Text(title),
      toolbarHeight: 50,
    );
  }
}
