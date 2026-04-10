import 'package:hive/hive.dart';
part 'notes_model.g.dart';

@HiveType(typeId: 0)
class NotesModel extends HiveObject {
  @HiveField(0)
   String titel;
  @HiveField(1)
   String subTitel;
  @HiveField(2)
  final String date;
  @HiveField(3)
   int color;

  NotesModel({
    required this.titel,
    required this.subTitel,
    required this.date,
    required this.color,
  });
}
