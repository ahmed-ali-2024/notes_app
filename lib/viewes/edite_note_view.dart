import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:notesapp/viewes/widgets/edite_notes_view_body.dart';

class EditeNotesView extends StatelessWidget {
  const EditeNotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: EditeNotesViewBody(),
    );
  }
}
