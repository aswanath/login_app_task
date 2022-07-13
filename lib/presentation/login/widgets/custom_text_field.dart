import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final String text;
  final TextEditingController textEditingController;
  const CustomTextFormField({
    Key? key,
    required this.textEditingController,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: textEditingController,
      cursorColor: Colors.black,
      style: const TextStyle(color: Colors.black),
      decoration: InputDecoration(
        hintText: text,
        hintStyle: const TextStyle(color: Colors.black38),
        fillColor: Colors.black12,
        filled: true,
        focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(5),borderSide: BorderSide.none),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(5),borderSide: BorderSide.none),
      ),
    );
  }
}