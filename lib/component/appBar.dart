import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MyAppBar({super.key});

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
      title: const Text("data"),
      toolbarHeight: 50,
    );
  }
}
