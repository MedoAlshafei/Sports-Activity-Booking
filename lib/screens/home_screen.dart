import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
// import '../themes/app_colors.dart';

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
    const String userName =
        'أهلا, محمد'; // Example user name, replace with actual user data

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
                      spacing: 8,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          textDirection: TextDirection.rtl,
                          textAlign: TextAlign.left,
                          '👋 $userName',
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
                            style: IconButton.styleFrom(
                              backgroundColor: Colors.black26,
                            ),
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
                            color: const Color.fromARGB(255, 59, 59, 59),
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
                            textDirection: TextDirection.rtl,
                            children: [
                              Text(
                                'SMART GYM',
                                style: GoogleFonts.eduSaBeginner(
                                  fontSize: 24,
                                  fontWeight: FontWeight.w600,
                                  color: colorScheme.onPrimary,
                                ),
                              ),
                              Text(
                                'التجمع الخامس',
                                style: GoogleFonts.eduSaBeginner(
                                  fontSize: 16,
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
                ),
              ),
            ],
          ),
          const SizedBox(height: 35),
          Row(
            spacing: 16,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              OutlinedButton(
                onPressed: () {},
                style: OutlinedButton.styleFrom(
                  maximumSize: const Size(70, 50),
                  minimumSize: const Size(70, 50),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 8,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
                child: Text(
                  'str',
                  style: GoogleFonts.eduSaBeginner(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: colorScheme.onSurface,
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
    );
  }
}
