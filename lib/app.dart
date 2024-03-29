import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ui_templates/commons/constants/app_colors.dart';
import 'package:flutter_ui_templates/commons/constants/routes.dart';
import 'package:flutter_ui_templates/pages/course/course_page.dart';
import 'package:flutter_ui_templates/pages/home/home_page.dart';
import 'package:flutter_ui_templates/pages/splash_page.dart';
import 'package:google_fonts/google_fonts.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      scrollBehavior: CustomScrollBehavior(),
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
        NamedRoute.course: (context) => CoursePage(),
      },
    );
  }
}

class CustomScrollBehavior extends MaterialScrollBehavior {
  @override
  Set<PointerDeviceKind> get dragDevices => {
        PointerDeviceKind.touch,
        PointerDeviceKind.mouse,
      };
}
