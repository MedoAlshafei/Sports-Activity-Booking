import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
  static const String userName = 'أهلا, محمد';

  static const List<String> weekDays = [
    'Sat',
    'Sun',
    'Mon',
    'Tue',
    'Wed',
    'Thu',
    'Fri',
  ];

  // Activities per day (sample data)
  final Map<String, List<_Activity>> activitiesByDay = {
    'Sat': [
      _Activity(Icons.sports_gymnastics_outlined, 'كاراتيه', 'قاعة 1'),
      _Activity(Icons.sports_tennis, 'تنس', 'ملعب 2'),
    ],
    'Sun': [_Activity(Icons.pool, 'سباحة', 'حمام سباحة')],
    'Mon': [_Activity(Icons.sports_soccer, 'كرة قدم', 'ملعب 1')],
    'Tue': [_Activity(Icons.sports_basketball, 'سلة', 'الصالة الرئيسية')],
    'Wed': [_Activity(Icons.fitness_center, 'جيم', 'قاعة الحديد')],
    'Thu': [_Activity(Icons.self_improvement, 'يوغا', 'قاعة اليوغا')],
    'Fri': [_Activity(Icons.sports_volleyball, 'طائرة', 'الملعب المغطى')],
  };

  String selectedDay = 'Sat';

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
            style: TextStyle(
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
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: Colors.red.withAlpha(100),
                ),
                child: Icon(Icons.person, color: Colors.white, size: 34.sp),
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
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: weekDays
                      .map(
                        (day) => DaysButton(
                          colorScheme: colorScheme,
                          dayName: day,
                          isSelected: selectedDay == day,
                          onPressed: () {
                            setState(() {
                              selectedDay = day;
                            });
                          },
                        ),
                      )
                      .toList(),
                ),
              ),
            ),
            SizedBox(height: MediaQuery.of(context).padding.top / 4),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                'الأنشطة المتاحة',
                textDirection: TextDirection.rtl,
                style: TextStyle(
                  fontSize: 20.sp,
                  fontWeight: FontWeight.bold,
                  color: colorScheme.onSurface,
                ),
              ),
            ),
            SizedBox(height: MediaQuery.of(context).padding.top / 4),
            ActivityItems(activities: activitiesByDay[selectedDay] ?? const []),
          ],
        ),
      ),
      bottomNavigationBar: CustomBottomNavBar(colorScheme: colorScheme),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        elevation: 18,
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterDocked,
    );
  }
}

class ActivityItems extends StatelessWidget {
  const ActivityItems({super.key, required this.activities});

  final List<_Activity> activities;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: activities.length,
      itemBuilder: (context, index) {
        final activity = activities[index];
        return GymCardDetails(
          colorScheme: colorScheme,
          icon: activity.icon,
          title: activity.title,
          subtitle: activity.subtitle,
        );
      },
    );
  }
}

class _Activity {
  final IconData icon;
  final String title;
  final String subtitle;
  const _Activity(this.icon, this.title, this.subtitle);
}
