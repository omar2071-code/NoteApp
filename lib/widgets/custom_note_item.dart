// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:note_app/cubit/Notes%20cubit/notes_cubit.dart';
import 'package:note_app/models/note_model.dart';
import 'package:note_app/screens/edit_note_screen.dart';

class NotesItem extends StatelessWidget {
  const NotesItem({Key? key, required this.noteModel}) : super(key: key);
  final NoteModel noteModel;
  @override
  Widget build(BuildContext context) {
    var noteCubit = BlocProvider.of<NotesCubit>(context);
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => EditNoteScreen(note: noteModel),
          ),
        );
      },
      child: Container(
        padding: EdgeInsets.only(top: 5, bottom: 15),
        decoration: BoxDecoration(
          color: Color(noteModel.color),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: Text(
                noteModel.title,
                style: TextStyle(color: Colors.black),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 16.0),
                child: Text(
                  noteModel.subTitle,
                  style: TextStyle(color: Colors.black.withOpacity(.7)),
                ),
              ),
              trailing: IconButton(
                onPressed: () {
                  noteModel.delete();
                  noteCubit.fetchAllNotes();
                },
                icon: Icon(Icons.delete),
                color: Colors.black,
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(right: 16.0),
              child: Text(
                noteModel.date,
                style: TextStyle(color: Colors.black),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
