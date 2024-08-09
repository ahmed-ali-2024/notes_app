import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:notesapp/cubits/add_notes_cubits/add_note_cubit.dart';
import 'package:notesapp/cubits/add_notes_cubits/add_notes_state.dart';
import 'package:notesapp/cubits/home_page_cubit/home_page_cubit.dart';
import 'package:notesapp/viewes/widgets/add_notes_form.dart';

// to creat poup page that we can add new note

// ignore: must_be_immutable
class AddNotesButtomSheet extends StatelessWidget {
  const AddNotesButtomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNoteCubit(),
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: BlocConsumer<AddNoteCubit, AddNotesState>(
          listener: (context, state) {
            if (state is AddNotesStateFail) {
            } else if (state is AddNotesStateSuccess) {
              BlocProvider.of<HomePageCubit>(context).fitchAllNotes();
              Navigator.pop(context);
            }
          },
          builder: (context, state) {
            return ModalProgressHUD(
              inAsyncCall: state is AddNotesStateLoading ? true : false,
              child: const SingleChildScrollView(
                child: AddNoteForm(),
              ),
            );
          },
        ),
      ),
    );
  }
}
