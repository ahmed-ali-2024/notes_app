import 'package:flutter/material.dart';
import 'package:notesapp/viewes/widgets/custom_appbar.dart';
import 'package:notesapp/viewes/widgets/notes_list_veiw.dart';

// to creat the body of the main page
//     contain:
//             1- CustomAppBar widget
//             2-NotesListView widget
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
          CustomAppBar(
            icon: Icons.search,
            text: 'Notes',
          ),
          Expanded(
            child: NotesListView(),
          ),
        ],
      ),
    );
  }
}
