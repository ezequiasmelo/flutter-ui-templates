import 'package:flutter/material.dart';
import 'package:flutter_ui/commons/constants/app_colors.dart';
import 'package:flutter_ui/commons/constants/routes.dart';
import 'package:flutter_ui/features/course_page.dart';
import 'package:flutter_ui/features/home/home_page.dart';
import 'package:flutter_ui/features/splash_page.dart';
import 'package:google_fonts/google_fonts.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: AppColors.black,
        appBarTheme: ThemeData.dark().appBarTheme.copyWith(
              backgroundColor: Colors.transparent,
            ),
        textTheme: GoogleFonts.nunitoTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
      initialRoute: NamedRoute.home,
      routes: {
        NamedRoute.splash: (context) => const SplashPage(),
        NamedRoute.home: (context) => const HomePage(),
        NamedRoute.course: (context) => const CoursePage(),
      },
    );
  }
}
