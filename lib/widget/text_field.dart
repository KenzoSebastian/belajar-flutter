import 'package:flutter/material.dart';

class TextFieldCustom extends StatelessWidget {
  final TextEditingController controller;
  final String placeholder;
  const TextFieldCustom({super.key, required this.controller, required this.placeholder});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          hintText: placeholder,
          labelText: placeholder,
          enabledBorder: const OutlineInputBorder(
            borderSide:
                BorderSide(color: Color.fromARGB(255, 70, 70, 70), width: 1),
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.black, width: 2),
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
        ),
        keyboardType: placeholder == 'No Telp'
            ? TextInputType.number
            : TextInputType.text,
      ),
    );
  }
}