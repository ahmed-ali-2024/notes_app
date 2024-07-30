import 'package:flutter/material.dart';
import 'package:notesapp/viewes/widgets/constants.dart';

// custom widget to creat buttom

class CustomButtom extends StatelessWidget {
  const CustomButtom({super.key, this.buttomText, this.onTap});
  final String? buttomText;

  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 50,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: kPrimaryColor,
        ),
        child: Center(
          child: Text(
            buttomText!,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
