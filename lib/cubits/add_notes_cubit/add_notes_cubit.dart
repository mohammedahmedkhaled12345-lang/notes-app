import 'package:bloc/bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:meta/meta.dart';
import 'package:notesapp/constans_file.dart';
import 'package:notesapp/model/notes_model.dart';

part 'add_notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(AddNotesInitial());

  addNote(NotesModel note) async {
    emit(AddNotesLoadind());

    try {
      var notesBox = Hive.box(knotesBox);
      await notesBox.add(note);
    } catch (e) {
      AddNotesFulier(errorMassege: e.toString());
    }
  }
}
