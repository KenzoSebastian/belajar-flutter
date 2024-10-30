import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DateFormatWidget extends StatelessWidget {
  const DateFormatWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Date Format')),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: (
          Text(
            DateFormat('EEEE, dd MMMM yyyy \n hh:mm:ss').format(DateTime.now()),
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 25),
            )
        ),
      )
    );
  }
}