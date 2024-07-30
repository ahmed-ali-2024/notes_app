import 'package:flutter/material.dart';
import 'package:notesapp/viewes/widgets/custum_note_item.dart';

//custom widget
//to creat list of notes

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: ListView.builder(
          padding: EdgeInsetsDirectional.zero,
          itemBuilder: (context, index) {
            return const Padding(
              padding: EdgeInsets.symmetric(vertical: 4),
              child: ViewItemBox(),
            );
          }),
    );
  }
}
