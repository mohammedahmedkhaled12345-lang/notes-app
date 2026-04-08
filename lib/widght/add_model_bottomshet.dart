import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notesapp/cubits/add_notes_cubit/add_notes_cubit.dart';
import 'package:notesapp/widght/add_note_form.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class AddNotesBottomShet extends StatelessWidget {
  const AddNotesBottomShet({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNotesCubit(),
      child: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16),
        child: BlocConsumer<AddNotesCubit, AddNotesState>(
          listener: (context, state) {
            if (state is AddNotesFulier) {
              print('falied${state.errorMassege}');
            }
            if (state is AddNotesSucsses) {
              Navigator.pop(context);
            }
          },
          builder: (context, state) {
            return ModalProgressHUD(
              inAsyncCall: state is AddNotesLoadind ? true : false,

              child: SingleChildScrollView(child: AddNoteForm()),
            );
          },
        ),
      ),
    );
  }
}
