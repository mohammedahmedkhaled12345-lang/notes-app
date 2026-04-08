part of 'add_notes_cubit.dart';

@immutable
abstract class AddNotesState {}

class AddNotesInitial extends AddNotesState {}

class AddNotesLoadind extends AddNotesState{}
class AddNotesSucsses extends AddNotesState {}

class AddNotesFulier extends AddNotesState {
 final String errorMassege;

  AddNotesFulier(this.errorMassege);
}
