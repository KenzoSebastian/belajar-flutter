import 'package:flutter/material.dart';

// ignore: must_be_immutable
class DynamicApp extends StatefulWidget {
  const DynamicApp({super.key});

  @override
  State<DynamicApp> createState() => _DynamicAppState();
}

class _DynamicAppState extends State<DynamicApp> {
  int counter = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Dynamic App')),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(counter.toString(), style: TextStyle(fontSize: 50 + double.parse(counter.toString()))),
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            FloatingActionButton(
              onPressed: () => setState(() => counter++),
              child: const Icon(Icons.add),
            ),
            FloatingActionButton(
              onPressed: () => counter != 1 ? setState(() => counter--) : null,
              child: const Icon(Icons.remove),
            ),
          ])
        ],
      ),
    );
  }
}
