import 'package:flutter/material.dart';
import 'package:notesapp/widght/CUSTOMSERCH_ICON.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text('Notes', style: TextStyle(color: Colors.white, fontSize: 24)),
        Spacer(),
        CustomSerchIcon(),
      ],
    );
  }
}
