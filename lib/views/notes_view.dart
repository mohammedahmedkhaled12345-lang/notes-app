import 'package:flutter/material.dart';
import 'package:notesapp/widght/notes_niew_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: const Color(0xff63EBCB).withOpacity(1),
        shape: CircleBorder(
          // تحكم في قيمة الـ radius للحصول على الشكل المطلوب
        ),
        child: Icon(Icons.add),
      ),

      body: const NotesViewBody(),
    );
  }
}
