import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/Add_Note_Cubit/cubit/add_note_cubit.dart';
import 'package:note_app/widgets/add_note_form.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNoteCubit(),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: SingleChildScrollView(
          child: BlocConsumer<AddNoteCubit, AddNoteState>(
            listener: (context, state) {
              // TODO: implement listener
              if (state is AddNoteFailure) {
                print('failuer ${state.errorMessage}');
              }
              if (state is AddNoteSuccess) {
                Navigator.pop(context);
              }
            },
            builder: (context, state) {
              return ConditionalBuilder(
                condition: state is! AddNoteLoading,
                builder: (context) => AddNoteForm(),
                fallback:
                    (context) => Center(child: CircularProgressIndicator()),
              );
            },
          ),
        ),
      ),
    );
  }
}
