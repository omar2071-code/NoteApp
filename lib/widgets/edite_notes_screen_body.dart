import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubit/Notes%20cubit/notes_cubit.dart';
import 'package:note_app/models/note_model.dart';
import 'package:note_app/widgets/custom_app_bar.dart';
import 'package:note_app/widgets/custom_text_form_field.dart';
import 'package:note_app/widgets/edit_notes_colors.dart';

class EditeNotesScreenBody extends StatefulWidget {
  const EditeNotesScreenBody({super.key, required this.note});
  final NoteModel note;

  @override
  State<EditeNotesScreenBody> createState() => _EditeNotesScreenBodyState();
}

class _EditeNotesScreenBodyState extends State<EditeNotesScreenBody> {
  String? title, subTitle;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 30),
      child: Column(
        children: [
          CustomAppBar(
            text: 'Edit Notes',
            iconData: Icons.done,
            onPressed: () {
              widget.note.title = title ?? widget.note.title;
              widget.note.subTitle = subTitle ?? widget.note.subTitle;
              widget.note.save();
              BlocProvider.of<NotesCubit>(context).fetchAllNotes();
              Navigator.pop(context);
            },
          ),
          SizedBox(height: 30),
          CustomTextFormField(
            onChanged: (value) {
              title = value;
            },
            hint: widget.note.title,
          ),
          SizedBox(height: 10),
          CustomTextFormField(
            onChanged: (value) {
              subTitle = value;
            },
            hint: widget.note.subTitle,
            maxLine: 6,
          ),
          SizedBox(height: 10),
          EditNotesColors(note: widget.note),
        ],
      ),
    );
  }
}
