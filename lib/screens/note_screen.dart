import 'package:flutter/material.dart';
import 'package:note_app/widgets/notes_screen_body.dart';

class NoteHomeScreen extends StatelessWidget {
  const NoteHomeScreen({super.key});
  static String id = 'NoteHomeScreen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: NotesScreenBody());
  }
}
