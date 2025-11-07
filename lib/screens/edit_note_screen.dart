import 'package:flutter/material.dart';
import 'package:note_app/models/note_model.dart';
import 'package:note_app/widgets/edite_notes_screen_body.dart';

class EditNoteScreen extends StatelessWidget {
  const EditNoteScreen({super.key, required this.note});
  static String id = 'EditNoteScreen';
  final NoteModel note;
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: EditeNotesScreenBody(note: note));
  }
}
