import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notesapp/cubits/add_notes_cubits/add_note_cubit.dart';
import 'package:notesapp/viewes/widgets/constants.dart';

class ColorItem extends StatelessWidget {
  const ColorItem({
    super.key,
    required this.colorIsActive,
    required this.colors,
  });
  final bool colorIsActive;
  final Color colors;
  @override
  Widget build(BuildContext context) {
    return colorIsActive
        ? CircleAvatar(
            backgroundColor: Colors.white,
            radius: 38,
            child: CircleAvatar(
              radius: 36,
              backgroundColor: colors,
            ),
          )
        : CircleAvatar(
            radius: 38,
            backgroundColor: colors,
          );
  }
}

class ColorsListView extends StatefulWidget {
  const ColorsListView({
    super.key,
  });

  @override
  State<ColorsListView> createState() => _ColorsListViewState();
}

class _ColorsListViewState extends State<ColorsListView> {
  int curentIndex = 0;
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
                BlocProvider.of<AddNoteCubit>(context).color = KColors[index];
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
