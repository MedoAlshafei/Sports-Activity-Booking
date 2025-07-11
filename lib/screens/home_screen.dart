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
    // final appColors = Theme.of(context).extension<AppColors>()!;
    final colorScheme = Theme.of(context).colorScheme;

    return Scaffold(
      body: Column(
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: 165,
                padding: EdgeInsets.only(
                  top: 35,
                  right: 16,
                  left: 16,
                  bottom: 8,
                ),
                decoration: BoxDecoration(
                  // gradient: LinearGradient(
                  //   colors: [appColors.accent4, colorScheme.primary],
                  //   begin: Alignment.topRight,
                  //   end: Alignment.bottomLeft,
                  // ),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(18),
                    bottomRight: Radius.circular(18),
                  ),
                  color: colorScheme.primary,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      spacing: 2,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          textDirection: TextDirection.rtl,
                          textAlign: TextAlign.left,
                          '👋 اهلا, محمد ',
                          style: GoogleFonts.eduSaBeginner(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: colorScheme.onPrimary,
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
              Positioned(
                top: 85,
                left: 20,
                right: 20,
                child: Card(
                  color: Colors.grey[850],
                  elevation: 8,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Row(
                      children: [
                        Container(
                          width: 60,
                          height: 60,
                          decoration: BoxDecoration(
                            color: Colors.grey[700],
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Icon(
                            Icons.fitness_center,
                            color: Colors.white,
                            size: 40,
                          ),
                        ),
                        SizedBox(width: 20),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'SMART GYM',
                                style: GoogleFonts.eduSaBeginner(
                                  fontSize: 24,
                                  fontWeight: FontWeight.w600,
                                  color: colorScheme.onPrimary,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: colorScheme.onPrimary,
        selectedItemColor: colorScheme.primary,
        currentIndex: 0,
        iconSize: 24,
        onTap: (value) {},
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'الرئيسية'),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'الإعدادات',
          ),
        ],
      ),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterDocked,
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
