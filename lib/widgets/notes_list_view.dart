import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubit/Notes%20cubit/notes_cubit.dart';
import 'package:note_app/models/note_model.dart';
import 'package:note_app/widgets/custom_note_item.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotesCubit, NotesState>(
      builder: (context, state) {
        List<NoteModel> notes = BlocProvider.of<NotesCubit>(context).notes;
        //code
        return notes.length == 0
            ? EmptyBodyNotes()
            : ListView.builder(
              itemCount: notes.length,
              padding: EdgeInsets.symmetric(vertical: 16),
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: NotesItem(noteModel: notes[index]),
                );
              },
            );
      },
    );
  }
}

class EmptyBodyNotes extends StatelessWidget {
  const EmptyBodyNotes({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: double.infinity,
        height: 200,
        decoration: BoxDecoration(
          color: Color(0xffe5e5e5),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Center(
          child: Text(
            'Add Notes +',
            style: TextStyle(
              color: Colors.grey,
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
