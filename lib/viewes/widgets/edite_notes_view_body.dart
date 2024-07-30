import 'package:flutter/material.dart';
import 'package:notesapp/viewes/widgets/custom_appbar.dart';
import 'package:notesapp/viewes/widgets/custom_text_feild.dart';

// to creat body of EditeNotesView page
//
class EditeNotesViewBody extends StatelessWidget {
  const EditeNotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          CustomAppBar(
            icon: Icons.check,
            text: 'Edite Note',
          ),
          SizedBox(height: 16),
          CustomTextFormFeild(
            hintText: 'Title',
          ),
          SizedBox(height: 16),
          CustomTextFormFeild(
            hintText: 'Note',
            maxLines: 5,
          )
        ],
      ),
    );
  }
}
