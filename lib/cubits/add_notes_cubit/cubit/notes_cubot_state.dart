part of 'notes_cubot_cubit.dart';

@immutable
sealed class NotesCubotState {}

final class NotesCubotInitial extends NotesCubotState {}

final class NotesCubotSuccess extends NotesCubotState{}
