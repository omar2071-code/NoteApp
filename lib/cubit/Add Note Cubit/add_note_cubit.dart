import 'package:bloc/bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:meta/meta.dart';
import 'package:note_app/models/note_model.dart';
import 'package:note_app/widgets/constaonts_file.dart';

part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());

  //Add note
  AddNote(NoteModel note) async {
    emit(AddNoteLoading());
    //use hivebox
    var notesBox = Hive.box<NoteModel>(kNotesBox);
    await notesBox
        .add(note)
        .then((value) {
          emit(AddNoteSuccess());
        })
        .catchError((errorMessage) {
          emit(AddNoteFailure(errorMessage.toString()));
        });
  }
}
