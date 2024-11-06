import 'package:belajar_flutter/provider/counter.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final dataCounter = Provider.of<Counter>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Penggunaan Provider Sederhana'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Consumer<Counter>(
            builder: (context, value, child) => Text(
              value.counter.toString(),
              style: const TextStyle(fontSize: 50),
            ),
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                onPressed: () {
                  dataCounter.decrement();
                  (dataCounter.showSnackbar)
                      ? ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                              content: Text('Counter tidak boleh minus'),
                              duration: Duration(milliseconds: 500),
                              backgroundColor: Colors.redAccent,
                              ))
                      : null;
                },
                icon: const Icon(Icons.remove),
                style: const ButtonStyle(
                  iconSize: WidgetStatePropertyAll(50),
                ),
              ),
              IconButton(
                onPressed: () {
                  dataCounter.increment();
                },
                icon: const Icon(Icons.add),
                style: const ButtonStyle(
                  iconSize: WidgetStatePropertyAll(50),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
