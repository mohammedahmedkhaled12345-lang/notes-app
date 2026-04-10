import 'package:flutter/material.dart';
import 'package:notesapp/constans_file.dart';

class CustomTextfelid extends StatelessWidget {
   const CustomTextfelid(
     {   this.onSaved,
    super.key,
    required this.hint,
    this.maxlines = 1, this.onchanged,
  });
  final void Function(String)? onchanged;
  final String hint;
  final int maxlines;
  final void Function(String?)? onSaved;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLines: maxlines,
      onSaved: onSaved,
      onChanged: onchanged,
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return 'felid is requred';
        } else {
          return null;
        }
      },
      cursorColor: KprimaryColore,
      decoration: InputDecoration(
        hintText: hint,
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
