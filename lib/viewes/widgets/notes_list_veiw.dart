import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notesapp/cubits/home_page_cubit/home_page_cubit.dart';
import 'package:notesapp/cubits/home_page_cubit/home_page_states.dart';
import 'package:notesapp/models/notes_model.dart';
import 'package:notesapp/viewes/widgets/custum_note_item.dart';

//custom widget
//to creat list of notes

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: BlocBuilder<HomePageCubit, HomePageStates>(
        builder: (context, state) {
          List<NotesModel> notes =
              BlocProvider.of<HomePageCubit>(context).notes!;
          return ListView.builder(
              itemCount: notes.length,
              padding: EdgeInsetsDirectional.zero,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4),
                  child: ViewItemBox(
                    note: notes[index],
                  ),
                );
              });
        },
      ),
    );
  }
}
