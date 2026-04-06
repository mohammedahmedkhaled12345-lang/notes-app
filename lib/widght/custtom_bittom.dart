import 'package:flutter/material.dart';
import 'package:notesapp/constans_file.dart';

class CustomBottom extends StatelessWidget {
  const CustomBottom({super.key, this.ontap, });
final void Function()? ontap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(onTap:ontap ,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 55,
        decoration: BoxDecoration(
          color: KprimaryColore,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Center(
          child: Text(
            'Add',
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
