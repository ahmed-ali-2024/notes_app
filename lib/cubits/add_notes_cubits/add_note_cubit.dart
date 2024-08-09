import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:notesapp/cubits/add_notes_cubits/add_notes_state.dart';
import 'package:notesapp/models/notes_model.dart';
import 'package:notesapp/viewes/widgets/constants.dart';

class AddNoteCubit extends Cubit<AddNotesState> {
  AddNoteCubit() : super(AddNotesStateInit());

  Color color = const Color(0xff590925);
  addNote(NotesModel note) async {
    note.color = color!.value;
    emit(AddNotesStateLoading());
    try {
      Box<NotesModel> notesBox = Hive.box<NotesModel>(kNotesBox);
      await notesBox.add(note);

      emit(AddNotesStateSuccess());
    } catch (e) {
      emit(AddNotesStateFail(e.toString()));
    }
  }
}
