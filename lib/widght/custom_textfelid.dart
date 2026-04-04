import 'package:flutter/material.dart';
import 'package:notesapp/constans_file.dart';

class CustomTextfelid extends StatelessWidget {
  const CustomTextfelid({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: KprimaryColore,
      decoration: InputDecoration(
        hintText: 'Titel',
        border: bulidBorder(),
        enabledBorder: bulidBorder(),
        focusedBorder: bulidBorder(Color: KprimaryColore),
      ),
    );
  }
}

OutlineInputBorder bulidBorder({Color}) {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(16),
    borderSide: BorderSide(color: Color ?? Colors.white),
  );
}
