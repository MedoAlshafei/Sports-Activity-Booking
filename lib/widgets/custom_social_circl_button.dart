import 'package:flutter/material.dart';

class CustomCircleButton extends StatelessWidget {
  const CustomCircleButton({
    super.key,
    required this.icon,
    required this.color,
    this.bgColor,
    required this.onTap,
  });
  final IconData icon;
  final Color color;
  final Color? bgColor;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return Material(
      color: bgColor,
      shape: const CircleBorder(),
      child: InkWell(
        customBorder: const CircleBorder(),
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Icon(icon, color: color, size: 26),
        ),
      ),
    );
  }
}
