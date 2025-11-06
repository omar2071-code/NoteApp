import 'package:flutter/material.dart';
import 'package:note_app/screens/home_screen.dart';

void main() {
  runApp(const NoteApp());
}

class NoteApp extends StatelessWidget {
  const NoteApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: NoteHomeScreen.id,
      routes: {NoteHomeScreen.id: (context) => NoteHomeScreen()},
    );
  }
}
