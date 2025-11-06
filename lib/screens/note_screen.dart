import 'package:flutter/material.dart';
import 'package:note_app/widgets/add_note_bottom_sheet.dart';
import 'package:note_app/widgets/constaonts_file.dart';
import 'package:note_app/widgets/notes_screen_body.dart';

class NoteHomeScreen extends StatelessWidget {
  const NoteHomeScreen({super.key});
  static String id = 'NoteHomeScreen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: CircleAvatar(
        backgroundColor: kPrimaryColor,
        radius: 22,
        child: IconButton(
          onPressed: () {
            showModalBottomSheet(
              context: context,
              builder: (context) {
                return AddNoteBottomSheet();
              },
            );
          },
          icon: Icon(Icons.add, color: Colors.black),
        ),
      ),
      body: NotesScreenBody(),
    );
  }
}
