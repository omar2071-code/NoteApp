import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:note_app/models/note_model.dart';
import 'package:note_app/screens/edit_note_screen.dart';
import 'package:note_app/screens/note_screen.dart';
import 'package:note_app/widgets/constaonts_file.dart';

void main() async {
  await Hive.initFlutter();
  await Hive.openBox(kNotesBox);
  Hive.registerAdapter(NoteModelAdapter());
  runApp(const NoteApp());
}

class NoteApp extends StatelessWidget {
  const NoteApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: NoteHomeScreen.id,
      routes: {
        NoteHomeScreen.id: (context) => NoteHomeScreen(),
        EditNoteScreen.id: (context) => EditNoteScreen(),
      },
      theme: ThemeData(brightness: Brightness.dark, fontFamily: 'Poppins'),
    );
  }
}
