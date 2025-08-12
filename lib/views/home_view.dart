import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sports_activity_booking/widgets/custom_bottom_nav_bar.dart';
import 'package:sports_activity_booking/widgets/custom_days_button.dart';
import 'package:sports_activity_booking/widgets/gym_card_details.dart';
import 'package:sports_activity_booking/widgets/top_home_view_card.dart';

class HomeViewPage extends StatefulWidget {
  const HomeViewPage({super.key, required this.title});

  final String title;

  @override
  State<HomeViewPage> createState() => _HomeViewPageState();
}

class _HomeViewPageState extends State<HomeViewPage> {
  static const String userName =
      'أهلا, محمد'; // Example user name, replace with actual user data

  static const List<String> weekDays = [
    'Sat',
    'Sun',
    'Mon',
    'Tue',
    'Wed',
    'Thu',
    'Fri',
  ];

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFA00000),
        elevation: 0,
        leading: null,
        title: Align(
          alignment: Alignment.centerRight,
          child: Text(
            textDirection: TextDirection.rtl,
            textAlign: TextAlign.left,
            '👋 $userName',
            style: GoogleFonts.eduSaBeginner(
              fontSize: 24.sp,
              fontWeight: FontWeight.bold,
              color: colorScheme.onPrimary,
            ),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: InkWell(
              onTap: () {
                Navigator.pushNamed(context, '/profile');
              },
              borderRadius: BorderRadius.circular(16),
              child: Icon(
                Icons.person,
                color: Colors.white,
                size: 24.sp,
                // tooltip: 'Profile',
              ),
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            TopHomeViewCard(colorScheme: colorScheme),
            SizedBox(height: MediaQuery.of(context).padding.top / 0.9),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  // spacing: 8, // Row does not have a spacing property
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: weekDays
                      .map(
                        (day) =>
                            DaysButton(colorScheme: colorScheme, dayName: day),
                      )
                      .toList(),
                  //  children: [
                  //     DaysButton(colorScheme: colorScheme, dayName: 'Sat'),
                  //     DaysButton(colorScheme: colorScheme, dayName: 'Sun'),
                  //     DaysButton(colorScheme: colorScheme, dayName: 'Mon'),
                  //     DaysButton(colorScheme: colorScheme, dayName: 'Tue'),
                  //     DaysButton(colorScheme: colorScheme, dayName: 'Wed'),
                  //     DaysButton(colorScheme: colorScheme, dayName: 'Thu'),
                  //     DaysButton(colorScheme: colorScheme, dayName: 'Fri'),
                  //   ],
                ),
              ),
            ),
            SizedBox(height: MediaQuery.of(context).padding.top / 4),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                'الأنشطة المتاحة',
                textDirection: TextDirection.rtl,
                style: GoogleFonts.eduSaBeginner(
                  fontSize: 20.sp,
                  fontWeight: FontWeight.bold,
                  color: colorScheme.onSurface,
                ),
              ),
            ),
            SizedBox(height: MediaQuery.of(context).padding.top / 4),
            // Add your list of activities here
            GymCardDetails(
              colorScheme: colorScheme,
              icon: Icons.fitness_center,
              title: 'التجمع الخامس',
              subtitle: 'التجمع الخامس',
            ),
            GymCardDetails(
              colorScheme: colorScheme,
              icon: Icons.fitness_center,
              title: 'التجمع الخامس',
              subtitle: 'التجمع الخامس',
            ),
          ],
        ),
      ),
      bottomNavigationBar: CustomBottomNavBar(colorScheme: colorScheme),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        elevation: 18,
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterDocked,
    );
  }
}
