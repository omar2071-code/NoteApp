import 'package:flutter/material.dart';
import 'package:note_app/widgets/custom_app_bar.dart';
import 'package:note_app/widgets/custom_text_field.dart';

class EditeNotesScreenBody extends StatelessWidget {
  const EditeNotesScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 30),
      child: Column(
        children: [
          CustomAppBar(text: 'Edit Notes', iconData: Icons.done),
          SizedBox(height: 30),
          CustomTextField(hint: 'Title'),
          SizedBox(height: 10),
          CustomTextField(hint: 'Content', maxLine: 6),
        ],
      ),
    );
  }
}
