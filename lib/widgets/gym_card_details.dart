import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class GymCardDetails extends StatelessWidget {
  const GymCardDetails({
    super.key,
    required this.colorScheme,
    required this.icon,
    required this.title,
    required this.subtitle,
  });

  final ColorScheme colorScheme;
  final IconData icon;
  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.grey[850],
      elevation: 8,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.r)),
      child: Padding(
        padding: EdgeInsets.all(20.r),
        child: Row(
          children: [
            Container(
              width: 55,
              height: 55,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 59, 59, 59),
                borderRadius: BorderRadius.circular(10.r),
              ),
              child: Icon(icon, color: Colors.white, size: 40),
            ),
            // SizedBox(width: MediaQuery.sizeOf(context).width * 0.2),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                textDirection: TextDirection.rtl,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 24.sp,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    subtitle,
                    style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w400,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
