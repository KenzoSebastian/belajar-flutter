import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  const TextFieldWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Text Field'),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Center(
          child: Padding(
        padding: const EdgeInsets.all(20),
        child: TextField(
          //fitur
          autocorrect: false,
          autofocus: false,
          enableSuggestions: true, // auto complete
          enableInteractiveSelection: false, // disable copy paste
          // enabled: false,
          obscureText: false, // hidden password
          obscuringCharacter: '*', // hidden password
          keyboardType: TextInputType.text,
          readOnly: false,

          //dekorasi
          showCursor: true,
          cursorColor: Colors.red,
          // cursorWidth: 10,
          // cursorHeight: 25,
          // cursorRadius: Radius.circular(20),
          textAlign: TextAlign.start,
          textAlignVertical: TextAlignVertical.center,
          textCapitalization: TextCapitalization.none,
          style: const TextStyle(color: Colors.red, fontSize: 20),
          decoration: InputDecoration(
            fillColor: Colors.amber,
            filled: true,
            icon: const Icon(
              Icons.person,
              size: 35,
            ),
            border: const OutlineInputBorder(),
            focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.red)
              ),
            enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.black)
              ),
            prefixIcon: const Icon(
              Icons.add_a_photo,
              size: 35,
            ),
            suffixIcon: IconButton(icon: const Icon(Icons.remove_red_eye), onPressed: () {}),
            // prefixText: 'Name : ',
            // prefix: Icon(Icons.person, size: 35,),
            hintText: "Masukkan Nama",
            hintStyle: const TextStyle(color: Colors.black, fontSize: 20),
            labelText: "Nama Lengkap",
            labelStyle: const TextStyle(color: Colors.black, fontSize: 20)),
        ),
      )),
    );
  }
}
