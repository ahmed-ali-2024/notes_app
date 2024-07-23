import 'package:flutter/material.dart';
import 'package:notesapp/viewes/widgets/custom_search_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Text(
          'Notes',
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
        Spacer(
          flex: 1,
        ),
        CustomSearchIcon(),
      ],
    );
  }
}
