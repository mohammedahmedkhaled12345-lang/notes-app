import 'package:flutter/material.dart';
import 'package:notesapp/widght/color_item.dart';

class ColorsListview extends StatefulWidget {
  @override
  State<ColorsListview> createState() => _ColorsListviewState();
}

class _ColorsListviewState extends State<ColorsListview> {
  int curretindex = 0;
  List<Color> colors = [
    Color(0xffDBB1BC),
    Color(0xffD3C4E3),
    Color(0xff8F95D3),
    Color(0xff82CFF2),
    Color(0xff58504A),
    Color(0xffC2B97F),
    Color(0xff410B13),
    Color(0xffCD5D67),
    Color(0xffBA1F33),
    Color(0xffF2F7F2),
  ];
  @override
  Widget build(BuildContext context) {
    // 3. هنا بنرسم الـ UI
    return SizedBox(
      height: 80,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: colors.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              curretindex = index;
              setState(() {});
            },
            child: ColorItem(isActive: curretindex == index,color: colors[index],),
          );
        },
      ),
    );
  }
}
