import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notesapp/cubits/add_notes_cubits/add_note_cubit.dart';
import 'package:notesapp/models/notes_model.dart';
import 'package:notesapp/viewes/widgets/color_list_view.dart';
import 'package:notesapp/viewes/widgets/custom_bottom.dart';
import 'package:notesapp/viewes/widgets/custom_text_feild.dart';
import 'package:intl/intl.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  // variables
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  String? title, subTitle;
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  @override
  Widget build(BuildContext context) {
    return Form(
      autovalidateMode: autovalidateMode,
      key: formKey,
      child: Column(
        children: [
          CustomTextFormFeild(
            onSaved: (value) {
              title = value;
            },
            hintText: 'Title',
          ),
          const SizedBox(
            height: 16,
          ),
          CustomTextFormFeild(
            onSaved: (contentValue) {
              subTitle = contentValue;
            },
            hintText: 'Content',
            maxLines: 3,
          ),
          const SizedBox(
            height: 25,
          ),
          const ColorsListView(),
          const SizedBox(
            height: 25,
          ),
          CustomButtom(
            onTap: () {
              if (formKey.currentState!.validate()) {
                formKey.currentState!.save();
                var format = DateFormat.yMd();
                var dateString = format.format(DateTime.now());
                var noteModel = NotesModel(
                  title: title!,
                  subitle: subTitle!,
                  color: const Color(0xff00FFFF).value,
                  date: dateString,
                );
                BlocProvider.of<AddNoteCubit>(context).addNote(noteModel);
              } else {
                autovalidateMode = AutovalidateMode.always;
              }
            },
            buttomText: 'Add',
          ),
        ],
      ),
    );
  }
}
