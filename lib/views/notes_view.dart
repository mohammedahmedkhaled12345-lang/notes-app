import 'package:flutter/material.dart';
import 'package:notesapp/cubits/add_notes_cubit/cubit/notes_cubot_cubit.dart';
import 'package:notesapp/widght/add_model_bottomshet.dart';
import 'package:notesapp/widght/notes_niew_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NotesCubotCubit(),
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            showModalBottomSheet(
              isScrollControlled: true,
              context: context,
              builder: (context) {
                return AddNotesBottomShet();
              },
            );
          },
          backgroundColor: const Color(0xff63EBCB).withOpacity(1),
          shape: CircleBorder(
            // تحكم في قيمة الـ radius للحصول على الشكل المطلوب
          ),
          child: Icon(Icons.add),
        ),

        body: const NotesViewBody(),
        backgroundColor: Color(0xff211837),
      ),
    );
  }
}
