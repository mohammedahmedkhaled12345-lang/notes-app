import 'package:bloc/bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:meta/meta.dart';
import 'package:notesapp/constans_file.dart';
import 'package:notesapp/model/notes_model.dart';

part 'add_notes_state.dart';

class AddNotesCubit extends Cubit<AddNotesState> {
  AddNotesCubit() : super(AddNotesInitial());

  Future<void> ddNote(NotesModel note) async {
    emit(AddNotesLoadind());

    try {
      var notesBox = Hive.box<NotesModel>(knotesBox);
      await notesBox.add(note);
      emit(AddNotesSucsses());
    } catch (e) {
      emit(AddNotesFulier(e.toString()));
    }
  }
}
