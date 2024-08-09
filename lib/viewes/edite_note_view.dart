import 'package:flutter/material.dart';
import 'package:notesapp/models/notes_model.dart';
import 'package:notesapp/viewes/widgets/edite_notes_view_body.dart';

class EditeNotesView extends StatelessWidget {
  const EditeNotesView({super.key, required this.note});

  final NotesModel note;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: EditeNotesViewBody(
        note: note,
      ),
    );
  }
}
