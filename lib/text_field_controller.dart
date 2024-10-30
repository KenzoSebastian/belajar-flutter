import 'package:flutter/material.dart';

class ControlInput extends StatefulWidget {
  const ControlInput({super.key});

  @override
  State<ControlInput> createState() => _ControlInputState();
}

class _ControlInputState extends State<ControlInput> {
  final TextEditingController myController = TextEditingController();

  String textInput = "hasil input";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Control Input'),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(25),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextField(
                  controller: myController,
                  onChanged: (value) {
                    print("onChanged");
                  },
                  onSubmitted: (value) {
                    setState(() => textInput = value);
                  },
                  onEditingComplete: () {
                    print("edit success");
                    print(myController.text);
                  },
                ),
                Text(textInput, style: const TextStyle(fontSize: 30)),
              ],
            ),
          ),
        ));
  }
}
