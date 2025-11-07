import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubit/Notes%20cubit/notes_cubit.dart';
import 'package:note_app/widgets/add_note_bottom_sheet.dart';
import 'package:note_app/widgets/constaonts_file.dart';
import 'package:note_app/widgets/notes_screen_body.dart';

class NoteHomeScreen extends StatelessWidget {
  const NoteHomeScreen({super.key});
  static String id = 'NoteHomeScreen';
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NotesCubit(),
      child: Scaffold(
        floatingActionButton: CircleAvatar(
          backgroundColor: kPrimaryColor,
          radius: 22,
          child: IconButton(
            onPressed: () {
              showModalBottomSheet(
                isScrollControlled: true,
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
      ),
    );
  }
}
