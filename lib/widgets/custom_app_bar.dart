import 'package:flutter/material.dart';
import 'package:note_app/widgets/custom_searc_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Notes',
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
        Spacer(),
        CustomSearchIcon(),
      ],
    );
  }
}
