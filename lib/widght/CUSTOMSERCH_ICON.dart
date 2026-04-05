import 'package:flutter/material.dart';

class CustomSerchIcon extends StatelessWidget {
  const CustomSerchIcon({super.key, required this.icon});
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 46,
      width: 46,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(.07),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Center(child: Icon(icon, size: 30)),
    );
  }
}
