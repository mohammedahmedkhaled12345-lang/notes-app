import 'package:flutter/material.dart';
import 'package:notesapp/model/notes_model.dart';
import 'package:notesapp/views/edit_note_view.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key, required this.note});
  final NotesModel note;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return EditNoteView();
            },
          ),
        );
      },
      child: Container(
        padding: EdgeInsets.only(left: 16, right: 0),
        decoration: BoxDecoration(
          color: Color(note.color),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              contentPadding: const EdgeInsets.only(right: 10, left: 24),
              title: Padding(
                padding: const EdgeInsets.only(top: 16),
                child: Text(
                  note.titel,
                  style: TextStyle(color: Colors.black, fontSize: 25),
                ),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 16),
                child: Text(
                  note.subTitel,
                  style: TextStyle(color: Colors.black.withOpacity(.7)),
                ),
              ),
              trailing: IconButton(
                onPressed: () {
                  note.delete();
                },
                icon: Icon(
                  Icons.delete,
                  color: Colors.black.withOpacity(.7),
                  size: 32,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 24, bottom: 24, top: 40),
              child: Text(note.date, style: TextStyle(color: Colors.black)),
            ),
          ],
        ),
      ),
    );
  }
}
