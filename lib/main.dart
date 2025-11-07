import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:note_app/cubit/Notes%20cubit/notes_cubit.dart';
import 'package:note_app/models/note_model.dart';
import 'package:note_app/screens/note_screen.dart';
import 'package:note_app/widgets/constants_file.dart';
import 'package:note_app/widgets/simple_bloc_observer.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  Bloc.observer = SimpleBlocObserver();
  Hive.registerAdapter(NoteModelAdapter());
  await Hive.openBox<NoteModel>(kNotesBox);

  runApp(const NoteApp());
}

class NoteApp extends StatelessWidget {
  const NoteApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NotesCubit()..fetchAllNotes(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: NoteHomeScreen.id,
        routes: {NoteHomeScreen.id: (context) => NoteHomeScreen()},
        theme: ThemeData(brightness: Brightness.dark, fontFamily: 'Poppins'),
      ),
    );
  }
}
