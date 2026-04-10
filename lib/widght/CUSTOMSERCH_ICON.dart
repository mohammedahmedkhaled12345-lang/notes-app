import 'package:flutter/material.dart';

class CustomSerchIcon extends StatelessWidget {
  const CustomSerchIcon({super.key, required this.icon, this.opressed});
  final IconData icon;
  final void Function()? opressed;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 46,
      width: 46,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(.07),
        borderRadius: BorderRadius.circular(12),
      ),
      child: IconButton(onPressed: opressed, icon: Icon(icon, size: 28)),
    );
  }
}
