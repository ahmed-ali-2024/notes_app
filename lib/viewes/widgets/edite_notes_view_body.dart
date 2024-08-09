import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notesapp/cubits/home_page_cubit/home_page_cubit.dart';
import 'package:notesapp/models/notes_model.dart';
import 'package:notesapp/viewes/widgets/color_list_view.dart';
import 'package:notesapp/viewes/widgets/constants.dart';
import 'package:notesapp/viewes/widgets/custom_appbar.dart';
import 'package:notesapp/viewes/widgets/custom_text_feild.dart';

// to creat body of EditeNotesView page
//
class EditeNotesViewBody extends StatefulWidget {
  const EditeNotesViewBody({super.key, required this.note});

  final NotesModel note;

  @override
  State<EditeNotesViewBody> createState() => _EditeNotesViewBodyState();
}

class _EditeNotesViewBodyState extends State<EditeNotesViewBody> {
  String? title, content;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          CustomAppBar(
            onPressed: () {
              widget.note.title = title ?? widget.note.title;
              widget.note.subitle = content ?? widget.note.subitle;
              widget.note.save();
              BlocProvider.of<HomePageCubit>(context).fitchAllNotes();
              Navigator.pop(context);
            },
            icon: Icons.check,
            text: 'Edite Note',
          ),
          const SizedBox(height: 16),
          CustomTextFormFeild(
            onChanged: (value) {
              title = value;
            },
            hintText: widget.note.title,
          ),
          const SizedBox(height: 16),
          CustomTextFormFeild(
            onChanged: (value) {
              content = value;
            },
            hintText: widget.note.subitle,
            maxLines: 5,
          ),
          const SizedBox(height: 16),
          EditeNoteColorList(
            note: widget.note,
          ),
        ],
      ),
    );
  }
}

class EditeNoteColorList extends StatefulWidget {
  const EditeNoteColorList({super.key, required this.note});
  final NotesModel note;
  @override
  State<EditeNoteColorList> createState() => _EditeNoteColorListState();
}

class _EditeNoteColorListState extends State<EditeNoteColorList> {
  late int curentIndex;

  @override
  void initState() {
    super.initState();
    curentIndex = KColors.indexOf(Color(widget.note.color));
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 38 * 2,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: KColors.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 6),
            child: GestureDetector(
              onTap: () {
                curentIndex = index;
                widget.note.color = KColors[index].value;
                setState(() {});
              },
              child: ColorItem(
                colors: KColors[index],
                colorIsActive: curentIndex == index,
              ),
            ),
          );
        },
      ),
    );
  }
}
