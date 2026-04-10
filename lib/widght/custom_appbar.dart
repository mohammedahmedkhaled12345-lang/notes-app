import 'package:flutter/material.dart';
import 'package:notesapp/widght/CUSTOMSERCH_ICON.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({super.key, required this.Titel, required this.iconData, this.onpressed});
  final String Titel;
  final IconData iconData;
  final void Function()? onpressed;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(Titel, style: TextStyle(color: Colors.white, fontSize: 24)),
        Spacer(),
        CustomSerchIcon(icon: iconData,opressed: onpressed,
        
        
        ),
      ],
    );
  }
}
