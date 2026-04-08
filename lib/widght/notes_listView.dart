import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notesapp/cubits/add_notes_cubit/cubit/notes_cubot_cubit.dart';
import 'package:notesapp/model/notes_model.dart';
import 'package:notesapp/widght/custom_ote_item.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotesCubotCubit, NotesCubotState>(
      builder: (context, state) {
        List<NotesModel> notes =
            BlocProvider.of<NotesCubotCubit>(context).notes ?? [];
        return Padding(
          padding: const EdgeInsets.only(top: 20, bottom: 10),
          child: ListView.builder(
            itemCount: notes.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: const NoteItem(),
              );
            },
          ),
        );
      },
    );
  }
}
