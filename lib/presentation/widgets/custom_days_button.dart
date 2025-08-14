import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DaysButton extends StatelessWidget {
  const DaysButton({
    super.key,
    required this.colorScheme,
    required this.dayName,
    required this.isSelected,
    required this.onPressed,
  });

  final ColorScheme colorScheme;
  final String dayName;
  final bool isSelected;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4),
      child: OutlinedButton(
        onPressed: onPressed,
        style: OutlinedButton.styleFrom(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.r),
          ),
          side: BorderSide(
            color: isSelected ? const Color(0xFFA00000) : colorScheme.outline,
          ),
          backgroundColor: isSelected ? const Color(0x1AA00000) : null,
        ),
        child: Text(
          dayName,
          style: TextStyle(
            fontSize: 12.sp,
            fontWeight: FontWeight.w600,
            color: isSelected ? const Color(0xFFA00000) : colorScheme.onSurface,
          ),
        ),
      ),
    );
  }
}
