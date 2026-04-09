import 'package:flutter/material.dart';
import 'package:notesapp/cubits/add_notes_cubit/cubit/notes_cubot_cubit.dart';
import 'package:notesapp/widght/custom_appbar.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notesapp/widght/notes_listView.dart';

class NotesViewBody extends StatefulWidget {
  const NotesViewBody({super.key});

  @override
  State<NotesViewBody> createState() => _NotesViewBodyState();
}

class _NotesViewBodyState extends State<NotesViewBody> {
  void initstate() {
    BlocProvider.of<NotesCubotCubit>(context).fatchAllotes();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          SizedBox(height: 50),
          CustomAppbar(Titel: 'Notes', iconData: Icons.search_rounded),
          Expanded(child: NotesListView()),
        ],
      ),
    );
  }
}
