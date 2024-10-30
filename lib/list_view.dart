import 'package:flutter/material.dart';

class ListViewWidget extends StatelessWidget {
  ListViewWidget({super.key});

  final List<Color> myColor = [
    Colors.blue,
    Colors.red,
    Colors.green,
    Colors.purple,
    Colors.amber,
    Colors.pink,
  ];

  final List<Widget> myNumber = List.generate(
      100,
      (i) => Column(children: [
            Text(
              '${i + 1}',
              style: TextStyle(
                fontSize: 20 + double.parse(i.toString()),
              ),
            ),
            const Divider()
          ],
          ));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Center(child: Text('List View')),
          backgroundColor: Colors.blue,
        ),
        body: ListView(children: myNumber));
  }
}
