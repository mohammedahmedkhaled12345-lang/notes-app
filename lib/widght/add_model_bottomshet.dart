import 'package:flutter/material.dart';
import 'package:notesapp/widght/custom_textfelid.dart';

class AddNotesBottomShet extends StatelessWidget {
  const AddNotesBottomShet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16),
      child: Column(
        children: [
          SizedBox(height: 32),
          CustomTextfelid(hint: 'Titel'),
          SizedBox(height: 30),
          CustomTextfelid(hint: 'Content', maxlines: 7),
        ],
      ),
    );
  }
}
