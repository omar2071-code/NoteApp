import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:note_app/models/note_model.dart';
import 'package:note_app/widgets/constants_file.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());
  List<NoteModel> notes = [];
  Color color = Colors.blue;
  //Add note
  fetchAllNotes() async {
    var notesBox = Hive.box<NoteModel>(kNotesBox);

    notes = notesBox.values.toList();
    notes.sort((a, b) => b.date.compareTo(a.date));
    emit(NotesSuccess());
  }
}
