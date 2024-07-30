import 'package:flutter/material.dart';
import 'package:notesapp/viewes/widgets/constants.dart';

// to creat custom text field and use it as a widget in the app

class CustomTextFormFeild extends StatelessWidget {
  const CustomTextFormFeild(
      {super.key, this.hintText, this.maxLines = 1, this.onSaved});

  final String? hintText;
  final int? maxLines;
  final void Function(String?)? onSaved;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: onSaved,
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return 'Field is required';
        } else {
          return null;
        }
      },
      maxLines: maxLines,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: const TextStyle(color: kPrimaryColor),
        border: buildBorder(),
        focusedBorder: buildBorder(kPrimaryColor),
        disabledBorder: buildBorder(),
        enabledBorder: buildBorder(),
      ),
    );
  }

// method that can we use to choose colore to border to TextFormFiled
  OutlineInputBorder buildBorder([bordercolor]) {
    return OutlineInputBorder(
      borderRadius: const BorderRadius.all(Radius.circular(8)),
      borderSide: BorderSide(color: bordercolor ?? Colors.white),
    );
  }
}
