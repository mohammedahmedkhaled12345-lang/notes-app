part of 'add_notes_cubit.dart';

@immutable
abstract class AddNotesState {}

class NotesInitial extends AddNotesState {}

class NotesLoadind extends AddNotesState {}

class NotesSucsses extends AddNotesState {
  final List<NotesModel> notes;

  NotesSucsses({required this.notes});
}

class AddNotesFulier extends AddNotesState {
  final String errorMassege;

  AddNotesFulier(this.errorMassege);
}
