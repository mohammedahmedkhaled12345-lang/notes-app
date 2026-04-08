import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:notesapp/constans_file.dart';
import 'package:notesapp/model/notes_model.dart';

part 'notes_cubot_state.dart';

class NotesCubotCubit extends Cubit<NotesCubotState> {
  NotesCubotCubit() : super(NotesCubotInitial());

  fatchAllotes(NotesModel note) async {
    emit(NotesCubotoading());

    try {
      var notesBox = Hive.box<NotesModel>(knotesBox);
   List <NotesModel>notes =   notesBox.values.toList();
      emit(NotesCubotSucsses(notes));
    } catch (e) {
      emit(NotesCubotfaliure(e.toString()));
    }
  }
}
