import 'package:flutter/material.dart';

class SwitchWidget extends StatefulWidget {
  const SwitchWidget({super.key});

  @override
  State<SwitchWidget> createState() => _SwitchWidgetState();
}

class _SwitchWidgetState extends State<SwitchWidget> {
  bool isSwitched = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Switch'),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Switch(
              // activeColor: Colors.green,
              // inactiveTrackColor: Colors.red,
              // activeTrackColor: Colors.indigo,
              // inactiveThumbColor: Colors.amber,
              // activeThumbImage: const NetworkImage(
              //     'https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__480.jpg'),
              // inactiveThumbImage: const NetworkImage(
              //     'https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__480.jpg'),
              value: isSwitched,
              onChanged: (value) {
                setState(() {
                  isSwitched = value;
                });
              },
            ),
            Text(
              isSwitched ? 'Switch On' : 'Switch Off',
              style: const TextStyle(fontSize: 30),
            ),
          ],
        ),
      ),
    );
  }
}
