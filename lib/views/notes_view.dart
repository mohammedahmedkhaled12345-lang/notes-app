import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notesapp/cubits/add_notes_cubit/cubit/notes_cubot_cubit.dart';
import 'package:notesapp/widght/add_model_bottomshet.dart';
import 'package:notesapp/widght/notes_niew_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
Widget build(BuildContext context) {
  return BlocProvider(
    create: (context) => NotesCubotCubit()..fatchAllotes(),
    child: Builder(
      builder: (context) {
        return Scaffold(
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              // 1. الحصول على الـ Cubit من الـ context الجديد الخاص بالـ Builder
              var notesCubit = BlocProvider.of<NotesCubotCubit>(context);

              showModalBottomSheet(
                isScrollControlled: true,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                context: context,
                builder: (context) {
                  // 2. تمرير الـ Cubit للـ BottomSheet
                  return BlocProvider.value(
                    value: notesCubit,
                    child: const AddNotesBottomShet(),
                  );
                },
              );
            },
            child: const Icon(Icons.add),
          ),
          body: const NotesViewBody(),
        );
      },
    ),
  );
}
}
