import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notesapp/cubits/home_page_cubit/home_page_cubit.dart';
import 'package:notesapp/viewes/widgets/custom_appbar.dart';
import 'package:notesapp/viewes/widgets/notes_list_veiw.dart';

// to creat the body of the main page
//     contain:
//             1- CustomAppBar widget
//             2-NotesListView widget
class NotesViewBody extends StatefulWidget {
  const NotesViewBody({super.key});

  @override
  State<NotesViewBody> createState() => _NotesViewBodyState();
}

class _NotesViewBodyState extends State<NotesViewBody> {
  @override
  void initState() {
    super.initState();
    BlocProvider.of<HomePageCubit>(context).fitchAllNotes();
  }

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
