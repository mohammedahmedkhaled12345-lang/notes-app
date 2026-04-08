part of 'notes_cubot_cubit.dart';

@immutable
sealed class NotesCubotState {}

final class NotesCubotInitial extends NotesCubotState {}

final class NotesCubotSucsses extends NotesCubotState {
  final List<NotesModel> notes;

  NotesCubotSucsses({required this.notes});
}

final class NotesCubotfaliure extends NotesCubotState {
  final String errorMasseg;

  NotesCubotfaliure({required this.errorMasseg});
}

final class NotesCubotoading extends NotesCubotState {}
