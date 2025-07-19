import 'package:flutter/material.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({super.key, required this.colorScheme});

  final ColorScheme colorScheme;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: colorScheme.onPrimary,
      selectedItemColor: colorScheme.primary,
      currentIndex: 0,
      iconSize: 24,
      onTap: (value) {},
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'الرئيسية'),
        BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'الإعدادات'),
      ],
    );
  }
}
