import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notesapp/cubits/add_notes_cubit/cubit/notes_cubot_cubit.dart';
import 'package:notesapp/model/notes_model.dart';
import 'package:notesapp/widght/custom_appbar.dart';
import 'package:notesapp/widght/custom_textfelid.dart';

class EditNoteViewBody extends StatefulWidget {
  const EditNoteViewBody({super.key, required this.note});
  final NotesModel note;

  @override
  State<EditNoteViewBody> createState() => _EditNoteViewBodyState();
}

class _EditNoteViewBodyState extends State<EditNoteViewBody> {
  String? titel, suptitel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          SizedBox(height: 50),
          CustomAppbar(
            onpressed: () {
              widget.note.titel = titel ?? widget.note.titel;
              widget.note.subTitel = suptitel ?? widget.note.subTitel;
              widget.note.save();
              BlocProvider.of<NotesCubotCubit>(context).fatchAllotes();
              Navigator.pop(context);
            },
            Titel: 'Edit',
            iconData: Icons.check,
          ),
          SizedBox(height: 25),
          CustomTextfelid(
            hint: widget.note.titel,
            onchanged: (value) {
              titel = value;
            },
          ),
          SizedBox(height: 50),
          CustomTextfelid(
            hint: widget.note.subTitel,
            maxlines: 6,
            onchanged: (value) {
              suptitel = value;
            },
          ),
        ],
      ),
    );
  }
}
