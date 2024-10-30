import 'package:flutter/material.dart';

class WidgetName extends StatelessWidget {
  const WidgetName({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('judul'),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: const Text("hello world"),
    );
  }
}