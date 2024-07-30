import 'package:flutter/material.dart';
import 'package:notesapp/viewes/widgets/add_sheet_buttom_sheet.dart';
import 'package:notesapp/viewes/widgets/notes_view_body.dart';

// Home page of app

class NoteViews extends StatelessWidget {
  const NoteViews({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16)),
              context: context,
              builder: (context) {
                return const AddNotesButtomSheet();
              });
        },
        child: const Icon(
          Icons.add,
        ),
      ),
      body: const NotesViewBody(),
    );
  }
}
