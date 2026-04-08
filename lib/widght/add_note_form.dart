import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notesapp/cubits/add_notes_cubit/add_notes_cubit.dart';
import 'package:notesapp/model/notes_model.dart';
import 'package:notesapp/widght/custom_textfelid.dart';
import 'package:notesapp/widght/custtom_bittom.dart';

class AddNoteForm extends StatefulWidget {
  AddNoteForm({super.key});

  @override
  State<AddNoteForm> createState() => _CustomFormWidgetState();
}

class _CustomFormWidgetState extends State<AddNoteForm> {
  // يمكنك هنا إضافة TextEditingController لكل حقل لإدارة النصوص
  final GlobalKey<FormState> formkay = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? titel, subtitel;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formkay,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          const SizedBox(height: 32),
          CustomTextfelid(
            hint: 'Titel',
            onSaved: (value) {
              titel = value;
            },
          ),
          const SizedBox(height: 30),
          CustomTextfelid(
            hint: 'Content',
            maxlines: 7,
            onSaved: (value) {
              subtitel = value;
            },
          ),
          const SizedBox(height: 32),
          CustomBottom(
            ontap: () {
              if (formkay.currentState!.validate()) {
                formkay.currentState!.save();
                var noteModel = NotesModel(
                  titel: titel!,
                  subTitel: subtitel!,
                  date: DateTime.now().toString(),
                  color: Colors.blue.value,
                );

                BlocProvider.of<AddNotesCubit>(context).ddNote(noteModel);
              } else {
                autovalidateMode = AutovalidateMode.always;
                setState(() {});
              }
            },
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
