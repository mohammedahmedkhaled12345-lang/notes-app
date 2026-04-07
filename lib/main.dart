import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notesapp/constans_file.dart';
import 'package:notesapp/cubits/add_notes_cubit/add_notes_cubit.dart';
import 'package:notesapp/model/notes_model.dart';
import 'package:notesapp/simpel_bloc_observer.dart';
import 'package:notesapp/views/notes_view.dart';

void main() async {
  await Hive.initFlutter();
  Bloc.observer = SimpelBlocObserver();
  await Hive.openBox(knotesBox);
  Hive.registerAdapter(NotesModelAdapter());
  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  // Constructor: البيانات بتدخل هنا ومش بتتغير تاني
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [BlocProvider(create: (context) => AddNotesCubit())],

      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(brightness: Brightness.dark, fontFamily: 'Poppins'),
        home: NotesView(),
      ),
    );
  }
}
