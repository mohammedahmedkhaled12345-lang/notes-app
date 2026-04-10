import 'package:flutter/material.dart';
import 'package:notesapp/widght/color_item.dart';

class ColorsListview extends StatelessWidget {
 

  @override
  Widget build(BuildContext context) {
    // 3. هنا بنرسم الـ UI
    return SizedBox(
      height: 80,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        itemBuilder: (context, index) {
          return ColorItem();
        },
      ),
    );
  }
}
