import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notesapp/cubits/add_notes_cubit/add_notes_cubit.dart';
import 'package:notesapp/widght/add_note_form.dart';

class AddNotesBottomShet extends StatelessWidget {
  const AddNotesBottomShet({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNotesCubit(),
      child: BlocConsumer<AddNotesCubit, AddNotesState>(
        listener: (context, state) {},
        builder: (context, state) {
          return AbsorbPointer(
            absorbing: state is AddNotesLoadind ? true : false,
            child: Padding(
              padding: const EdgeInsets.only(left: 16, right: 16),
              child: SingleChildScrollView(child: AddNoteForm()),
            ),
          );
        },
      ),
    );
  }
}
