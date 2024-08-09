import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notesapp/cubits/home_page_cubit/home_page_cubit.dart';
import 'package:notesapp/models/notes_model.dart';
import 'package:notesapp/utils/navigation_utils.dart';
import 'package:notesapp/viewes/edite_note_view.dart';

// to creat card we can show notes on it
class ViewItemBox extends StatelessWidget {
  const ViewItemBox({super.key, required this.note});

  final NotesModel note;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => navigateToPage(
          context,
          EditeNotesView(
            note: note,
          )),
      child: Container(
        padding: const EdgeInsets.all(24),
        decoration: BoxDecoration(
          color: Color(note.color),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              contentPadding: EdgeInsets.symmetric(vertical: 16),
              title: Text(
                note.title,
                style: const TextStyle(
                    color: Colors.black, fontFamily: 'Poppins', fontSize: 20),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.symmetric(vertical: 16),
                child: Text(
                  note.subitle,
                  style: const TextStyle(
                      color: Color(0xffB0803D),
                      fontFamily: 'Poppins',
                      fontSize: 16),
                ),
              ),
              trailing: IconButton(
                onPressed: () {
                  note.delete();
                  BlocProvider.of<HomePageCubit>(context).fitchAllNotes();
                },
                icon: const Icon(
                  FontAwesomeIcons.trash,
                  color: Colors.black,
                  size: 24,
                ),
              ),
            ),
            Text(
              note.date,
              style: TextStyle(
                color: Color(0xffB0803D),
                fontFamily: 'Poppins',
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
