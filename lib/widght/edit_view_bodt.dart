import 'package:flutter/material.dart';
import 'package:notesapp/widght/custom_appbar.dart';
import 'package:notesapp/widght/custom_textfelid.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          SizedBox(height: 50),
          CustomAppbar(Titel: 'Edit', iconData: Icons.check),
          SizedBox(height: 25),
          CustomTextfelid(hint: 'Titel'),
          SizedBox(height: 50),
          CustomTextfelid(hint: 'Content', maxlines: 6),
        ],
      ),
    );
  }
}
