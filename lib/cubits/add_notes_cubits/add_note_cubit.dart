import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notesapp/cubits/add_notes_cubits/add_notes_state.dart';

class AddNoteCubit extends Cubit<AddNotesState> {
  AddNoteCubit() : super(AddNotesStateInit());
}
