import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:notesapp/cubits/home_page_cubit/home_page_states.dart';
import 'package:notesapp/models/notes_model.dart';
import 'package:notesapp/viewes/widgets/constants.dart';

class HomePageCubit extends Cubit<HomePageStates> {
  HomePageCubit() : super(HomePageStateinit());

  List<NotesModel>? notes;
  fitchAllNotes() {
    var noteBox = Hive.box<NotesModel>(kNotesBox);

    notes = noteBox.values.toList();
    emit(HomePageStateSuccess());
  }
}
