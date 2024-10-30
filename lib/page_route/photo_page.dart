import 'package:flutter/material.dart';

class PhotoPage extends StatelessWidget {
  const PhotoPage({super.key});

  static const routeName = "/photoPage";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Photo Page'),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: const Center(
          child: Text(
        "Photo Page",
        style: TextStyle(fontSize: 50),
      )),
    );
  }
}
