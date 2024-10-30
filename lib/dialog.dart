import 'package:flutter/material.dart';

class DialogWidget extends StatefulWidget {
  const DialogWidget({super.key});

  @override
  State<DialogWidget> createState() => _DialogWidgetState();
}

class _DialogWidgetState extends State<DialogWidget> {
  String data = "Belum ada inputan";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dialog'),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Center(child: Text(data, style: const TextStyle(fontSize: 30))),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) => AlertDialog(
              title: const Text('Delete'),
              content: const Text('Are you sure?'),
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.pop(context, false);
                    setState(() => data = "FALSE");
                  },
                  child: const Text('Cancel'),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pop(context, true);
                    setState(() => data = "TRUE");
                  },
                  child: const Text('Delete'),
                ),
              ],
            ),
          ).then((value) => print(value));
        },
        child: const Icon(Icons.delete),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
