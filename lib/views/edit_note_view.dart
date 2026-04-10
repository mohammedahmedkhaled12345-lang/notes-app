import 'package:flutter/material.dart';
import 'package:notesapp/model/notes_model.dart';
import 'package:notesapp/widght/edit_view_bodt.dart';

class EditNoteView extends StatelessWidget {
  const EditNoteView({super.key, required this.note});
  final NotesModel note;
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: EditNoteViewBody(note: note,));
  }
}
