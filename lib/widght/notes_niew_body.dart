import 'package:flutter/material.dart';
import 'package:notesapp/widght/custom_appbar.dart';

import 'package:notesapp/widght/notes_listView.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          SizedBox(height: 50),
          CustomAppbar(Titel: 'Notes',iconData: Icons.search_rounded,),
          Expanded(child: NotesListView()),
        ],
      ),
    );
  }
}
