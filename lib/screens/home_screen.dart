import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../themes/app_colors.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final appColors = Theme.of(context).extension<AppColors>()!;
    final colorScheme = Theme.of(context).colorScheme;

    return Scaffold(
      body: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.only(top: 35, right: 16, left: 16, bottom: 8),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [appColors.accent4, colorScheme.primary],
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Hello, Mohamed',
                      style: GoogleFonts.eduSaBeginner(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: colorScheme.onSecondary,
                      ),
                    ),
                    InkWell(
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.person),
                        color: Colors.white,
                        tooltip: 'Profile',
                        iconSize: 24,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        elevation: 24,
        child: Icon(Icons.add),
      ),
      // appBar: AppBar(
      //   backgroundColor: colorScheme.primary,
      //   title: Text(
      //     'Welcome, Mohamed',
      //     style: GoogleFonts.eduSaBeginner(
      //       fontSize: 20,
      //       fontWeight: FontWeight.w600,
      //       color: colorScheme.onPrimary,
      //     ),
      //   ),
      //   actions: [IconButton(icon: const Icon(Icons.person), onPressed: () {})],
      //   elevation: 0,
      // ),
      // body: Column(
      //   mainAxisAlignment: MainAxisAlignment.center,
      //   children: <Widget>[
      //     Container(
      //       decoration: BoxDecoration(
      //         borderRadius: BorderRadius.only(
      //           bottomLeft: Radius.circular(16),
      //           bottomRight: Radius.circular(16),
      //         ),
      //         gradient: LinearGradient(
      //           colors: [
      //             colorScheme.primary,
      //             appColors.accent4,
      //             appColors.accent1,
      //           ], // Replace with your desired colors or use colorScheme if needed
      //           begin: Alignment.topCenter,
      //           end: Alignment.bottomCenter,
      //         ),
      //       ),
      //       child: Column(
      //         children: [
      //           Row(
      //             children: [
      //               Text(
      //                 'Test',
      //                 textAlign: TextAlign.center,
      //                 style: GoogleFonts.eduSaBeginner(
      //                   fontSize: 24,
      //                   fontWeight: FontWeight.bold,
      //                   color: colorScheme.onSurface,
      //                 ),
      //               ),
      //             ],
      //           ),
      //           SizedBox(height: 50),
      //         ],
      //       ),
      //     ),
      //     const SizedBox(height: 24),
      //     Icon(Icons.sports_soccer, size: 100, color: colorScheme.primary),
      //     const SizedBox(height: 24),
      //     Text(
      //       'مرحباً بك في تطبيق حجز الرياضة',
      //       textAlign: TextAlign.center,
      //       style: GoogleFonts.eduSaBeginner(
      //         fontSize: 24,
      //         fontWeight: FontWeight.bold,
      //         color: colorScheme.onSurface,
      //       ),
      //     ),
      //     const SizedBox(height: 16),
      //     Text(
      //       'تم تسجيل دخولك بنجاح!',
      //       textAlign: TextAlign.center,
      //       style: GoogleFonts.eduSaBeginner(
      //         fontSize: 16,
      //         color: colorScheme.onSurface.withOpacity(0.7),
      //       ),
      //     ),
      //     const SizedBox(height: 48),
      //     Row(
      //       mainAxisAlignment: MainAxisAlignment.center,
      //       children: [
      //         ElevatedButton(
      //           style: ElevatedButton.styleFrom(
      //             backgroundColor: appColors.accent1,
      //             foregroundColor: Colors.white,
      //             padding: const EdgeInsets.symmetric(
      //               horizontal: 24,
      //               vertical: 12,
      //             ),
      //             shape: RoundedRectangleBorder(
      //               borderRadius: BorderRadius.circular(12),
      //             ),
      //           ),
      //           onPressed: () {},
      //           child: Text(
      //             'حجز ملعب',
      //             style: GoogleFonts.eduSaBeginner(
      //               fontSize: 16,
      //               fontWeight: FontWeight.w600,
      //             ),
      //           ),
      //         ),
      //         const SizedBox(width: 12),
      //         ElevatedButton(
      //           style: ElevatedButton.styleFrom(
      //             backgroundColor: appColors.success,
      //             foregroundColor: Colors.white,
      //             padding: const EdgeInsets.symmetric(
      //               horizontal: 24,
      //               vertical: 12,
      //             ),
      //             shape: RoundedRectangleBorder(
      //               borderRadius: BorderRadius.circular(12),
      //             ),
      //           ),
      //           onPressed: () {},
      //           child: Text(
      //             'حجوزاتي',
      //             style: GoogleFonts.eduSaBeginner(
      //               fontSize: 16,
      //               fontWeight: FontWeight.w600,
      //             ),
      //           ),
      //         ),
      //       ],
      //     ),
      //   ],
      // ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {
      //     // Add new booking
      //   },
      //   shape: RoundedRectangleBorder(
      //     borderRadius: BorderRadiusGeometry.circular(25),
      //   ),
      //   enableFeedback: true,
      //   backgroundColor: colorScheme.primary,
      //   foregroundColor: colorScheme.onPrimary,
      //   child: const Icon(Icons.add),
      // ),
    );
  }
}
