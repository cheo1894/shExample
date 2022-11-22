import 'package:flutter/material.dart';

class MyInput extends StatefulWidget {
  var controller;
  String placeholder;
  MyInput({Key? key, this.controller, this.placeholder=''}) : super(key: key);

  @override
  State<MyInput> createState() => _MyInputState();
}

class _MyInputState extends State<MyInput> {
  Color inputColor = Colors.grey;

  var fieldStyle = OutlineInputBorder(
    borderRadius: BorderRadius.circular(20),
    borderSide: BorderSide(width: 3, color: Colors.transparent),
  );
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      cursorColor: Colors.white,
      autofocus: false,
      decoration: InputDecoration(
        hintText: widget.placeholder,
          //fillColor: Colors.grey,
          filled: true,
          border: InputBorder.none,
          enabledBorder: fieldStyle,
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: const BorderSide(width: 3, color: Colors.redAccent),
          ),
          focusedBorder: fieldStyle),
    );
  }
}
