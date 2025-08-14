import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sports_activity_booking/app_router.dart';

import 'themes/light_theme.dart';
// import 'themes/dark_theme.dart';

void main() {
  runApp(MyApp(appRouter: AppRouter()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key, required this.appRouter});

  final AppRouter appRouter;

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Sport Booking App',
        theme: LightTheme.theme,
        // darkTheme: DarkTheme.theme,
        themeMode: ThemeMode.system,
        onGenerateRoute: appRouter.generateRoute,
      ),
    );
  }
}
