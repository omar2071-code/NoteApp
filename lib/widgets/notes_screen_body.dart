import 'package:flutter/material.dart';
import 'package:note_app/widgets/custom_app_bar.dart';

class NotesScreenBody extends StatelessWidget {
  const NotesScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(children: [SizedBox(height: 25), CustomAppBar()]),
    );
  }
}
