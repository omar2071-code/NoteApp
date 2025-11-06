import 'package:flutter/material.dart';
import 'package:note_app/widgets/custom_app_bar.dart';
import 'package:note_app/widgets/custom_text_field.dart';
import 'package:note_app/widgets/edite_notes_screen_body.dart';

class EditNoteScreen extends StatelessWidget {
  const EditNoteScreen({super.key});
  static String id = 'EditNoteScreen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: EditeNotesScreenBody());
  }
}
