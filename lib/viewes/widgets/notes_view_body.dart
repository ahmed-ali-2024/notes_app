import 'package:flutter/material.dart';
import 'package:notesapp/viewes/widgets/custom_appbar.dart';
import 'package:notesapp/viewes/widgets/custum_note_item.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          SizedBox(
            height: 16,
          ),
          CustomAppBar(),
          ViewItemBox(),
        ],
      ),
    );
  }
}
