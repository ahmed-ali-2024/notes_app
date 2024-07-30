import 'package:hive/hive.dart';
part 'notes_model.g.dart';

@HiveType(typeId: 0)
class NotesModel extends HiveObject {
  @HiveField(0)
  final String title;

  @HiveField(1)
  final String subitle;

  @HiveField(2)
  final int color;

  @HiveField(3)
  final String date;

  NotesModel({
    required this.title,
    required this.subitle,
    required this.color,
    required this.date,
  });
}
