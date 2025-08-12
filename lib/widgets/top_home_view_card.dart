import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sports_activity_booking/widgets/gym_card_details.dart';

class TopHomeViewCard extends StatelessWidget {
  const TopHomeViewCard({super.key, required this.colorScheme});

  final ColorScheme colorScheme;

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          width: MediaQuery.sizeOf(context).width,
          padding: EdgeInsets.only(top: 35, right: 16, left: 16, bottom: 48),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(18.r),
              bottomRight: Radius.circular(18.r),
            ),
            color: colorScheme.primary,
          ),
        ),
        Positioned(
          top: 0,
          left: 20,
          right: 20,
          child: GymCardDetails(
            colorScheme: colorScheme,
            icon: Icons.fitness_center,
            title: 'Smart GYM',
            subtitle: 'التجمع الخامس',
          ),
        ),
      ],
    );
  }
}
