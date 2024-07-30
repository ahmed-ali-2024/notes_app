import 'package:flutter/material.dart';

// Utility that we can use it to push to any page we chose it
void navigateToPage(BuildContext context, Widget page) {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => page),
  );
}
