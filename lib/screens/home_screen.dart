import 'package:flutter/material.dart';

class NoteHomeScreen extends StatelessWidget {
  const NoteHomeScreen({super.key});
  static String id = 'NoteHomeScreen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text('NoteApp')));
  }
}
