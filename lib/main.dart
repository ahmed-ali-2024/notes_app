import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:notesapp/cubits/home_page_cubit/home_page_cubit.dart';
import 'package:notesapp/models/notes_model.dart';
import 'package:notesapp/simple_observer.dart';
import 'package:notesapp/viewes/notes_view.dart';
import 'package:notesapp/viewes/widgets/constants.dart';

void main() async {
  await Hive.initFlutter();
  Bloc.observer = SimpleObserver();
  Hive.registerAdapter(NotesModelAdapter());
  await Hive.openBox<NotesModel>(kNotesBox);

  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomePageCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(brightness: Brightness.dark, fontFamily: 'Poppins'),
        home: const NoteViews(),
      ),
    );
  }
}
