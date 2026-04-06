part of 'add_notes_cubit.dart';

@immutable
abstract class NotesState {}

class AddNotesInitial extends NotesState {}

class AddNotesLoadind extends NotesState {}

class AddNotesSucsses extends NotesState {}

class AddNotesFulier extends NotesState {
 final String errorMassege;

  AddNotesFulier({required this.errorMassege});
}
